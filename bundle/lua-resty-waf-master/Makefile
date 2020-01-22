RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/waf/request.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/request.lua
	$(INSTALL) lib/resty/waf/log.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/log.lua
	$(INSTALL) lib/resty/waf/base.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/base.lua
	$(INSTALL) lib/resty/waf/translate.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/translate.lua
	$(INSTALL) lib/resty/waf/storage/dict.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/storage/dict.lua
	$(INSTALL) lib/resty/waf/storage/redis.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/storage/redis.lua
	$(INSTALL) lib/resty/waf/storage/memcached.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/storage/memcached.lua
	$(INSTALL) lib/resty/waf/transform.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/transform.lua
	$(INSTALL) lib/resty/waf/phase.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/phase.lua
	$(INSTALL) lib/resty/waf/storage.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/storage.lua
	$(INSTALL) lib/resty/waf/options.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/options.lua
	$(INSTALL) lib/resty/waf/random.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/random.lua
	$(INSTALL) lib/resty/waf/actions.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/actions.lua
	$(INSTALL) lib/resty/waf/rule_calc.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/rule_calc.lua
	$(INSTALL) lib/resty/waf/util.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/util.lua
	$(INSTALL) lib/resty/waf/load_ac.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/load_ac.lua
	$(INSTALL) lib/resty/waf/operators.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/operators.lua
	$(INSTALL) lib/resty/waf/collections.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf/collections.lua
	$(INSTALL) lib/resty/waf.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/waf.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
