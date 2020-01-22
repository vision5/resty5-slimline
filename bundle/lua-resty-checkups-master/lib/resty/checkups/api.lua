-- Copyright (C) 2014-2016 UPYUN, Inc.

local cjson      = require "cjson.safe"

local heartbeat       = require "resty.checkups.heartbeat"
local dyconfig        = require "resty.checkups.dyconfig"
local base            = require "resty.checkups.base"
local try             = require "resty.checkups.try"

local str_format = string.format

local localtime  = ngx.localtime
local mutex      = ngx.shared.mutex
local state      = ngx.shared.state
local shd_config = ngx.shared.config
local log        = ngx.log
local now        = ngx.now
local ERR        = ngx.ERR
local WARN       = ngx.WARN
local INFO       = ngx.INFO
local worker_id  = ngx.worker.id
local get_phase  = ngx.get_phase


local _M = {
    _VERSION = "0.20",
    STATUS_OK = base.STATUS_OK, STATUS_UNSTABLE = base.STATUS_UNSTABLE, STATUS_ERR = base.STATUS_ERR
}


function _M.feedback_status(skey, host, port, failed)
    local ups = base.upstream.checkups[skey]
    if not ups then
        return nil, "unknown skey " .. skey
    end

    local srv
    for level, cls in pairs(ups.cluster) do
        for _, s in ipairs(cls.servers) do
            if s.host == host and s.port == port then
                srv = s
                break
            end
        end
    end

    if not srv then
        return nil, "unknown host:port" .. host .. ":" .. port
    end

    base.set_srv_status(skey, srv, failed)
    return 1
end


function _M.ready_ok(skey, callback, opts)
    opts = opts or {}
    local ups = base.upstream.checkups[skey]
    if not ups then
        return nil, "unknown skey " .. skey
    end

    return try.try_cluster(skey, callback, opts)
end


function _M.prepare_checker(config)
    base.upstream.start_time = localtime()
    base.upstream.conf_hash = config.global.conf_hash
    base.upstream.checkup_timer_interval = config.global.checkup_timer_interval or 5
    base.upstream.checkup_timer_overtime = config.global.checkup_timer_overtime or 60
    base.upstream.checkups = {}
    base.upstream.ups_status_sync_enable = config.global.ups_status_sync_enable
    base.upstream.ups_status_timer_interval = config.global.ups_status_timer_interval or 5
    base.upstream.checkup_shd_sync_enable = config.global.checkup_shd_sync_enable
    base.upstream.shd_config_timer_interval = config.global.shd_config_timer_interval
        or base.upstream.checkup_timer_interval
    base.upstream.default_heartbeat_enable = config.global.default_heartbeat_enable

    local skeys = {}
    for skey, ups in pairs(config) do
        if type(ups) == "table" and type(ups.cluster) == "table" then
            base.upstream.checkups[skey] = base.table_dup(ups)

            for level, cls in pairs(base.upstream.checkups[skey].cluster) do
                base.extract_servers_from_upstream(skey, cls)
            end
            if base.upstream.checkup_shd_sync_enable then
                if shd_config and worker_id then
                    local phase = get_phase()
                    -- if in init_worker phase, only worker 0 can update shm
                    if phase == "init" or
                        phase == "init_worker" and worker_id() == 0 then
                        local key = dyconfig._gen_shd_key(skey)
                        shd_config:set(key, cjson.encode(base.upstream.checkups[skey].cluster))
                    end
                    skeys[skey] = 1
                else
                    log(ERR, "checkup_shd_sync_enable is true but " ..
                        "no shd_config nor worker_id found.")
                end
            end
        end
    end

    if base.upstream.checkup_shd_sync_enable and
        shd_config and worker_id then
        local phase = get_phase()
        -- if in init_worker phase, only worker 0 can update shm
        if phase == "init" or phase == "init_worker" and worker_id() == 0 then
            shd_config:set(base.SHD_CONFIG_VERSION_KEY, 0)
            shd_config:set(base.SKEYS_KEY, cjson.encode(skeys))
        end

        base.upstream.shd_config_version = 0
    end

    base.upstream.initialized = true
end


function _M.get_status()
    local all_status = {}
    for skey in pairs(base.upstream.checkups) do
        all_status["cls:" .. skey] = base.get_upstream_status(skey)
    end
    local last_check_time = state:get(base.CHECKUP_LAST_CHECK_TIME_KEY) or cjson.null
    all_status.last_check_time = last_check_time
    all_status.checkup_timer_alive = state:get(base.CHECKUP_TIMER_ALIVE_KEY) or false
    all_status.start_time = base.upstream.start_time
    all_status.conf_hash = base.upstream.conf_hash or cjson.null
    all_status.shd_config_version = base.upstream.shd_config_version or cjson.null

    all_status.config_timer = dyconfig.get_timer_key_status()

    return all_status
end


function _M.get_ups_timeout(skey)
    if not skey then
        return
    end

    local ups = base.upstream.checkups[skey]
    if not ups then
        return
    end

    local timeout = ups.timeout or 5
    return timeout, ups.send_timeout or timeout, ups.read_timeout or timeout
end


function _M.create_checker()
    local phase = get_phase()
    if phase ~= "init_worker" then
        error("create_checker must be called in init_worker phase")
    end

    if not base.upstream.initialized then
        log(ERR, "create checker failed, call prepare_checker in init_by_lua")
        return
    end

    -- shd config syncer enabled
    if base.upstream.shd_config_version then
        dyconfig.create_shd_config_syncer()
    end

    if base.upstream.ups_status_sync_enable and not base.ups_status_timer_created then
        local ok, err = ngx.timer.at(0, base.ups_status_checker)
        if not ok then
            log(WARN, "failed to create ups_status_checker: ", err)
            return
        end
        base.ups_status_timer_created = true
    end

    if not worker_id then
        log(ERR, "ngx_http_lua_module version too low, no heartbeat timer will be created")
        return
    elseif worker_id() ~= 0 then
        return
    end

    -- only worker 0 will create heartbeat timer
    local ok, err = ngx.timer.at(0, heartbeat.active_checkup)
    if not ok then
        log(WARN, "failed to create timer: ", err)
        return
    end

    local ckey = base.CHECKUP_TIMER_KEY
    local overtime = base.upstream.checkup_timer_overtime
    local ok, err = mutex:set(ckey, 1, overtime)
    if not ok then
        log(WARN, "failed to update shm: ", err)
    end
end


function _M.select_peer(skey)
    return _M.ready_ok(skey, function(host, port)
        return { host=host, port=port }
    end)
end


function _M.update_upstream(skey, upstream)
    if not upstream or not next(upstream) then
        return false, "can not set empty upstream"
    end

    local ok, err
    for level, cls in pairs(upstream) do
        if not cls or not next(cls) then
            return false, "can not update empty level"
        end

        local servers = cls.servers
        if not servers or not next(servers) then
            return false, "can not update empty servers"
        end

        for _, srv in ipairs(servers) do
            ok, err = dyconfig.check_update_server_args(skey, level, srv)
            if not ok then
                return false, err
            end
        end
    end

    local lock

    lock, err = base.get_lock(base.SKEYS_KEY)
    if not lock then
        log(WARN, "failed to acquire the lock: ", err)
        return false, err
    end

    ok, err = dyconfig.do_update_upstream(skey, upstream)

    base.release_lock(lock)

    return ok, err
end


function _M.delete_upstream(skey)
    local lock, ok, err
    lock, err = base.get_lock(base.SKEYS_KEY)
    if not lock then
        log(WARN, "failed to acquire the lock: ", err)
        return false, err
    end

    ok, err = dyconfig.do_delete_upstream(skey)

    base.release_lock(lock)

    return ok, err
end


return _M
