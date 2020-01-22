RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/auto-ssl.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl.lua
	$(INSTALL) lib/resty/auto-ssl/json_adapters/cjson.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/json_adapters/cjson.lua
	$(INSTALL) lib/resty/auto-ssl/json_adapters/dkjson.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/json_adapters/dkjson.lua
	$(INSTALL) lib/resty/auto-ssl/servers/hook.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/servers/hook.lua
	$(INSTALL) lib/resty/auto-ssl/servers/challenge.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/servers/challenge.lua
	$(INSTALL) lib/resty/auto-ssl/jobs/renewal.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/jobs/renewal.lua
	$(INSTALL) lib/resty/auto-ssl/storage_adapters/redis.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/storage_adapters/redis.lua
	$(INSTALL) lib/resty/auto-ssl/storage_adapters/file.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/storage_adapters/file.lua
	$(INSTALL) lib/resty/auto-ssl/ssl_certificate.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/ssl_certificate.lua
	$(INSTALL) lib/resty/auto-ssl/init_worker.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/init_worker.lua
	$(INSTALL) lib/resty/auto-ssl/init_master.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/init_master.lua
	$(INSTALL) lib/resty/auto-ssl/storage.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/storage.lua
	$(INSTALL) lib/resty/auto-ssl/utils/shuffle_table.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/utils/shuffle_table.lua
	$(INSTALL) lib/resty/auto-ssl/utils/shell_execute.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/utils/shell_execute.lua
	$(INSTALL) lib/resty/auto-ssl/utils/parse_openssl_time.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/utils/parse_openssl_time.lua
	$(INSTALL) lib/resty/auto-ssl/utils/start_sockproc.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/utils/start_sockproc.lua
	$(INSTALL) lib/resty/auto-ssl/utils/random_seed.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/utils/random_seed.lua
	$(INSTALL) lib/resty/auto-ssl/ssl_providers/lets_encrypt.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auto-ssl/ssl_providers/lets_encrypt.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
