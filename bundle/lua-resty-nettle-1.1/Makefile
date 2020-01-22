RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/nettle/arcfour.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/arcfour.lua
	$(INSTALL) lib/resty/nettle/padding.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/padding.lua
	$(INSTALL) lib/resty/nettle/ecdsa.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/ecdsa.lua
	$(INSTALL) lib/resty/nettle/knuth-lfib.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/knuth-lfib.lua
	$(INSTALL) lib/resty/nettle/base16.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/base16.lua
	$(INSTALL) lib/resty/nettle/base64.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/base64.lua
	$(INSTALL) lib/resty/nettle/poly1305.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/poly1305.lua
	$(INSTALL) lib/resty/nettle/gmp.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/gmp.lua
	$(INSTALL) lib/resty/nettle/salsa20.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/salsa20.lua
	$(INSTALL) lib/resty/nettle/aes.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/aes.lua
	$(INSTALL) lib/resty/nettle/version.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/version.lua
	$(INSTALL) lib/resty/nettle/rsa.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/rsa.lua
	$(INSTALL) lib/resty/nettle/cast128.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/cast128.lua
	$(INSTALL) lib/resty/nettle/yarrow.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/yarrow.lua
	$(INSTALL) lib/resty/nettle/padding/base64.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/padding/base64.lua
	$(INSTALL) lib/resty/nettle/padding/spacepadding.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/padding/spacepadding.lua
	$(INSTALL) lib/resty/nettle/padding/pkcs7.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/padding/pkcs7.lua
	$(INSTALL) lib/resty/nettle/padding/zeropadding.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/padding/zeropadding.lua
	$(INSTALL) lib/resty/nettle/padding/iso10126.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/padding/iso10126.lua
	$(INSTALL) lib/resty/nettle/padding/nopadding.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/padding/nopadding.lua
	$(INSTALL) lib/resty/nettle/padding/iso7816-4.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/padding/iso7816-4.lua
	$(INSTALL) lib/resty/nettle/padding/ansix923.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/padding/ansix923.lua
	$(INSTALL) lib/resty/nettle/dsa.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/dsa.lua
	$(INSTALL) lib/resty/nettle/serpent.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/serpent.lua
	$(INSTALL) lib/resty/nettle/sha1.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/sha1.lua
	$(INSTALL) lib/resty/nettle/rc4.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/rc4.lua
	$(INSTALL) lib/resty/nettle/curve25519.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/curve25519.lua
	$(INSTALL) lib/resty/nettle/ed25519-sha512.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/ed25519-sha512.lua
	$(INSTALL) lib/resty/nettle/md2.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/md2.lua
	$(INSTALL) lib/resty/nettle/pbkdf2.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/pbkdf2.lua
	$(INSTALL) lib/resty/nettle/types/arcfour.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/arcfour.lua
	$(INSTALL) lib/resty/nettle/types/ecdsa.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/ecdsa.lua
	$(INSTALL) lib/resty/nettle/types/knuth-lfib.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/knuth-lfib.lua
	$(INSTALL) lib/resty/nettle/types/base16.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/base16.lua
	$(INSTALL) lib/resty/nettle/types/base64.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/base64.lua
	$(INSTALL) lib/resty/nettle/types/poly1305.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/poly1305.lua
	$(INSTALL) lib/resty/nettle/types/cfb.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/cfb.lua
	$(INSTALL) lib/resty/nettle/types/salsa20.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/salsa20.lua
	$(INSTALL) lib/resty/nettle/types/aes.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/aes.lua
	$(INSTALL) lib/resty/nettle/types/eax.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/eax.lua
	$(INSTALL) lib/resty/nettle/types/common.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/common.lua
	$(INSTALL) lib/resty/nettle/types/version.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/version.lua
	$(INSTALL) lib/resty/nettle/types/rsa.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/rsa.lua
	$(INSTALL) lib/resty/nettle/types/cast128.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/cast128.lua
	$(INSTALL) lib/resty/nettle/types/yarrow.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/yarrow.lua
	$(INSTALL) lib/resty/nettle/types/gcm.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/gcm.lua
	$(INSTALL) lib/resty/nettle/types/ccm.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/ccm.lua
	$(INSTALL) lib/resty/nettle/types/dsa.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/dsa.lua
	$(INSTALL) lib/resty/nettle/types/serpent.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/serpent.lua
	$(INSTALL) lib/resty/nettle/types/sha1.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/sha1.lua
	$(INSTALL) lib/resty/nettle/types/curve25519.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/curve25519.lua
	$(INSTALL) lib/resty/nettle/types/ed25519-sha512.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/ed25519-sha512.lua
	$(INSTALL) lib/resty/nettle/types/cbc.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/cbc.lua
	$(INSTALL) lib/resty/nettle/types/nettle-types.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/nettle-types.lua
	$(INSTALL) lib/resty/nettle/types/md2.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/md2.lua
	$(INSTALL) lib/resty/nettle/types/pbkdf2.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/pbkdf2.lua
	$(INSTALL) lib/resty/nettle/types/chacha-poly1305.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/chacha-poly1305.lua
	$(INSTALL) lib/resty/nettle/types/ctr.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/ctr.lua
	$(INSTALL) lib/resty/nettle/types/ripemd160.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/ripemd160.lua
	$(INSTALL) lib/resty/nettle/types/twofish.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/twofish.lua
	$(INSTALL) lib/resty/nettle/types/blowfish.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/blowfish.lua
	$(INSTALL) lib/resty/nettle/types/mpz.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/mpz.lua
	$(INSTALL) lib/resty/nettle/types/chacha.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/chacha.lua
	$(INSTALL) lib/resty/nettle/types/des.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/des.lua
	$(INSTALL) lib/resty/nettle/types/ecc.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/ecc.lua
	$(INSTALL) lib/resty/nettle/types/camellia.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/camellia.lua
	$(INSTALL) lib/resty/nettle/types/sha2.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/sha2.lua
	$(INSTALL) lib/resty/nettle/types/gosthash94.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/gosthash94.lua
	$(INSTALL) lib/resty/nettle/types/hmac.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/hmac.lua
	$(INSTALL) lib/resty/nettle/types/md5.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/md5.lua
	$(INSTALL) lib/resty/nettle/types/sha3.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/sha3.lua
	$(INSTALL) lib/resty/nettle/types/xts.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/xts.lua
	$(INSTALL) lib/resty/nettle/types/md4.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/md4.lua
	$(INSTALL) lib/resty/nettle/types/cmac.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/cmac.lua
	$(INSTALL) lib/resty/nettle/types/umac.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/types/umac.lua
	$(INSTALL) lib/resty/nettle/eddsa.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/eddsa.lua
	$(INSTALL) lib/resty/nettle/library.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/library.lua
	$(INSTALL) lib/resty/nettle/chacha-poly1305.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/chacha-poly1305.lua
	$(INSTALL) lib/resty/nettle/ripemd160.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/ripemd160.lua
	$(INSTALL) lib/resty/nettle/twofish.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/twofish.lua
	$(INSTALL) lib/resty/nettle/blowfish.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/blowfish.lua
	$(INSTALL) lib/resty/nettle/hogweed.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/hogweed.lua
	$(INSTALL) lib/resty/nettle/mpz.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/mpz.lua
	$(INSTALL) lib/resty/nettle/chacha.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/chacha.lua
	$(INSTALL) lib/resty/nettle/random.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/random.lua
	$(INSTALL) lib/resty/nettle/des.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/des.lua
	$(INSTALL) lib/resty/nettle/ecc.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/ecc.lua
	$(INSTALL) lib/resty/nettle/camellia.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/camellia.lua
	$(INSTALL) lib/resty/nettle/sha2.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/sha2.lua
	$(INSTALL) lib/resty/nettle/gosthash94.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/gosthash94.lua
	$(INSTALL) lib/resty/nettle/hmac.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/hmac.lua
	$(INSTALL) lib/resty/nettle/md5.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/md5.lua
	$(INSTALL) lib/resty/nettle/sha3.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/sha3.lua
	$(INSTALL) lib/resty/nettle/md4.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/md4.lua
	$(INSTALL) lib/resty/nettle/cmac.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/cmac.lua
	$(INSTALL) lib/resty/nettle/umac.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle/umac.lua
	$(INSTALL) lib/resty/nettle.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/nettle.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
