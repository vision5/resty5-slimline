RESTY5_PREFIX=/usr/local/resty5

PREFIX ?=          /usr/local
LUA_INCLUDE_DIR ?= $(PREFIX)/include
LUA_LIB_DIR ?=     $(PREFIX)/lib/lua/$(LUA_VERSION)
INSTALL ?= install

.PHONY: all test install

all: ;

install: all
	$(INSTALL) -d $(DESTDIR)$(LUA_LIB_DIR)/resty
	$(INSTALL) lib/resty/mvc/request.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/request.lua
	$(INSTALL) lib/resty/mvc/form.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/form.lua
	$(INSTALL) lib/resty/mvc/row.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/row.lua
	$(INSTALL) lib/resty/mvc/settings.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/settings.lua
	$(INSTALL) lib/resty/mvc/datetime.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/datetime.lua
	$(INSTALL) lib/resty/mvc/apps.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/apps.lua
	$(INSTALL) lib/resty/mvc/formfield.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/formfield.lua
	$(INSTALL) lib/resty/mvc/model.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/model.lua
	$(INSTALL) lib/resty/mvc/auth.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/auth.lua
	$(INSTALL) lib/resty/mvc/widget.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/widget.lua
	$(INSTALL) lib/resty/mvc/middlewares/session.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/middlewares/session.lua
	$(INSTALL) lib/resty/mvc/middlewares/auth.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/middlewares/auth.lua
	$(INSTALL) lib/resty/mvc/middlewares/message.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/middlewares/message.lua
	$(INSTALL) lib/resty/mvc/middlewares/cookie.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/middlewares/cookie.lua
	$(INSTALL) lib/resty/mvc/middlewares/post.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/middlewares/post.lua
	$(INSTALL) lib/resty/mvc/middlewares/lazysession.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/middlewares/lazysession.lua
	$(INSTALL) lib/resty/mvc/middlewares/messages.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/middlewares/messages.lua
	$(INSTALL) lib/resty/mvc/migrate.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/migrate.lua
	$(INSTALL) lib/resty/mvc/query.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/query.lua
	$(INSTALL) lib/resty/mvc/manager.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/manager.lua
	$(INSTALL) lib/resty/mvc/q.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/q.lua
	$(INSTALL) lib/resty/mvc/template.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/template.lua
	$(INSTALL) lib/resty/mvc/view.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/view.lua
	$(INSTALL) lib/resty/mvc/cookie.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/cookie.lua
	$(INSTALL) lib/resty/mvc/validator.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/validator.lua
	$(INSTALL) lib/resty/mvc/response.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/response.lua
	$(INSTALL) lib/resty/mvc/router.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/router.lua
	$(INSTALL) lib/resty/mvc/modelfield.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/modelfield.lua
	$(INSTALL) lib/resty/mvc/dispatcher.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/dispatcher.lua
	$(INSTALL) lib/resty/mvc/init.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/init.lua
	$(INSTALL) lib/resty/mvc/boundfield.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/boundfield.lua
	$(INSTALL) lib/resty/mvc/utils.lua $(DESTDIR)$(LUA_LIB_DIR)/resty/mvc/utils.lua


test: all
	PATH=$(RESTY5_PREFIX)/nginx/sbin:$$PATH prove -I../test-nginx/lib -r t
