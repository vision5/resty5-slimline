RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/dhcp/server.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/dhcp/server.lua
	$(INSTALL) lib/resty/dhcp/packet.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/dhcp/packet.lua
	$(INSTALL) lib/resty/dhcp/options.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/dhcp/options.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
