# SuperSU
ifeq ($(USE_SUPERSU),false)
else
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/xd/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

PRODUCT_PROPERTY_OVERRIDES += \
  ro.supersu.version=2.43
endif

# Chromium Prebuilt
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
-include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

PRODUCT_PACKAGES += \
    OpenDelta

PRODUCT_PROPERTY_OVERRIDES += \
    ro.delta.version=$(CM_VERSION)

PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/bin/mpdecision:system/bin/mpdecision