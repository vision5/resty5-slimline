RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/session.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session.lua
	$(INSTALL) lib/resty/session/strategies/regenerate.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/strategies/regenerate.lua
	$(INSTALL) lib/resty/session/strategies/default.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/strategies/default.lua
	$(INSTALL) lib/resty/session/identifiers/random.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/identifiers/random.lua
	$(INSTALL) lib/resty/session/storage/cookie.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/storage/cookie.lua
	$(INSTALL) lib/resty/session/storage/redis.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/storage/redis.lua
	$(INSTALL) lib/resty/session/storage/shm.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/storage/shm.lua
	$(INSTALL) lib/resty/session/storage/dshm.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/storage/dshm.lua
	$(INSTALL) lib/resty/session/storage/memcached.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/storage/memcached.lua
	$(INSTALL) lib/resty/session/storage/memcache.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/storage/memcache.lua
	$(INSTALL) lib/resty/session/hmac/sha1.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/hmac/sha1.lua
	$(INSTALL) lib/resty/session/ciphers/aes.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/ciphers/aes.lua
	$(INSTALL) lib/resty/session/ciphers/none.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/ciphers/none.lua
	$(INSTALL) lib/resty/session/encoders/base16.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/encoders/base16.lua
	$(INSTALL) lib/resty/session/encoders/base64.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/encoders/base64.lua
	$(INSTALL) lib/resty/session/encoders/hex.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/encoders/hex.lua
	$(INSTALL) lib/resty/session/serializers/json.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/session/serializers/json.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
