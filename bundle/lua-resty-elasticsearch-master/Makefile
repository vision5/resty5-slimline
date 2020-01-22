RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/elasticsearch.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/elasticsearch.lua
	$(INSTALL) lib/resty/es/cat.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/es/cat.lua
	$(INSTALL) lib/resty/es/snapshot.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/es/snapshot.lua
	$(INSTALL) lib/resty/es/cluster.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/es/cluster.lua
	$(INSTALL) lib/resty/es/utils.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/es/utils.lua
	$(INSTALL) lib/resty/es/nodes.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/es/nodes.lua
	$(INSTALL) lib/resty/es/indices.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/es/indices.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
