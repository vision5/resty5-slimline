RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) vendor/resty/hmac.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/hmac.lua
	$(INSTALL) lib/resty/jwt-validators.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/jwt-validators.lua
	$(INSTALL) lib/resty/evp.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/evp.lua
	$(INSTALL) lib/resty/jwt.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/jwt.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
