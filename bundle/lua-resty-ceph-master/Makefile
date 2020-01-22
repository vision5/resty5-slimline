RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/ceph/swift.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/ceph/swift.lua
	$(INSTALL) lib/resty/ceph/s3.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/ceph/s3.lua
	$(INSTALL) lib/resty/ceph/utils.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/ceph/utils.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
