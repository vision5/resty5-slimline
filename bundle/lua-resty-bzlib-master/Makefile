RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lualib/resty/bzlib/decompress.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/bzlib/decompress.lua
	$(INSTALL) lualib/resty/bzlib/compress.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/bzlib/compress.lua
	$(INSTALL) lualib/resty/bzlib/init.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/bzlib/init.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
