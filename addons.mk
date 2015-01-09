# SuperSU
ifeq ($(USE_SUPERSU),false)
else
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/xd/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

PRODUCT_PROPERTY_OVERRIDES += \
  ro.supersu.version=2.44
endif

# Chromium Prebuilt
ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM),yes)
-include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif

# Build Updater
PRODUCT_PACKAGES += \
    OpenDelta

# My Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.delta.version=$(CM_VERSION) \
    ro.build.selinux=0

# My Product Copies 
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/bin/mpdecision:system/bin/mpdecision \
    vendor/xd/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/xd/prebuilt/common/etc/init.d/96setenforce:system/etc/init.d/96setenforce

#Viper4Android
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/priv-app/V4A/V4A.apk:system/priv-app/V4A/V4A.apk \
    vendor/xd/prebuilt/common/lib/soundfx/libv4a_fx_ics.so:system/lib/soundfx/libv4a_fx_ics.so \
    vendor/xd/prebuilt/common/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/xd/prebuilt/common/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    vendor/xd/prebuilt/common/addon.d/91-v4a.sh:system/addon.d/91-v4a.sh

PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=false \
    lpa.releaselock=false \
    lpa.use-stagefright=false \
    tunnel.decode=false

#Hosts
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/etc/hosts:system/etc/hosts
