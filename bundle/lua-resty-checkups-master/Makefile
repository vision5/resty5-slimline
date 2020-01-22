RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/checkups/base.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/checkups/base.lua
	$(INSTALL) lib/resty/checkups/heartbeat.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/checkups/heartbeat.lua
	$(INSTALL) lib/resty/checkups/try.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/checkups/try.lua
	$(INSTALL) lib/resty/checkups/consistent_hash.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/checkups/consistent_hash.lua
	$(INSTALL) lib/resty/checkups/round_robin.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/checkups/round_robin.lua
	$(INSTALL) lib/resty/checkups/dyconfig.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/checkups/dyconfig.lua
	$(INSTALL) lib/resty/checkups/api.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/checkups/api.lua
	$(INSTALL) lib/resty/checkups.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/checkups.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
