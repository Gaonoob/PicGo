#
# Copyright (C) 2023 Lierda Gakki
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/package.mk

PKG_NAME:=liot-atprocess
PKG_RELEASE:=1.0
PKG_BUILD_DIR:= $(BUILD_DIR)/$(PKG_NAME)

define Package/$(PKG_NAME)
  SECTION:=Lierda SoaringOS Package
  CATEGORY:=Lierda SoaringOS Package
  SUBMENU:=Application
  TITLE:=Lierda liot-atprocess
  DEPENDS:= +liot-userapi +libpahomqttc +libcares +libjson-c +curl +liot-atserver +libubox +libubus +libblobmsg-json
endef

define Package/$(PKG_NAME)/description
 This package for lierda sdk liot-atprocess
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) source/* $(PKG_BUILD_DIR)
endef

define Build/Compile
	@echo "ture"
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/bin/* $(1)/bin/

	$(INSTALL_DIR) $(1)/etc
	$(CP) $(PKG_BUILD_DIR)/etc/* $(1)/etc/

	$(INSTALL_DIR) $(1)/lib
	$(CP) $(PKG_BUILD_DIR)/lib/* $(1)/lib/
	$(CP) $(BUILD_DIR)/../crosstool/sysroots/lib/libc_sec.so $(1)/lib/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
