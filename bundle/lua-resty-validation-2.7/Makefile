RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/validation/injection.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/validation/injection.lua
	$(INSTALL) lib/resty/validation/tz.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/validation/tz.lua
	$(INSTALL) lib/resty/validation/utf8.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/validation/utf8.lua
	$(INSTALL) lib/resty/validation/ngx.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/validation/ngx.lua
	$(INSTALL) lib/resty/validation.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/validation.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
