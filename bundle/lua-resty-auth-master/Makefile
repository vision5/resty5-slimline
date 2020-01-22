RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/auth.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auth.lua
	$(INSTALL) lib/resty/auth/digest.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auth/digest.lua
	$(INSTALL) lib/resty/auth/basic.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/auth/basic.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
