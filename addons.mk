# SuperSU
ifeq ($(USE_SUPERSU),false)
else
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/xd/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
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

ADDITIONAL_DEFAULT_PROPERTIES += \
     ro.adb.secure=0

# My Product Copies 
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/xd/prebuilt/common/etc/init.d/96setenforce:system/etc/init.d/96setenforce

#Viper4Android
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/priv-app/V4A/V4A.apk:system/priv-app/V4A/V4A.apk \
    vendor/xd/prebuilt/common/lib/soundfx/libv4a_fx_ics.so:system/lib/soundfx/libv4a_fx_ics.so \
    vendor/xd/prebuilt/common/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/xd/prebuilt/common/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    vendor/xd/prebuilt/common/addon.d/91-v4a.sh:system/addon.d/91-v4a.sh

# Hosts
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/etc/hosts:system/etc/hosts

# Screen recorder package and lib
PRODUCT_PACKAGES += \
    ScreenRecorder \
    libscreenrecorder

# Performance
PRODUCT_PACKAGES += \
    DeviceControl 

# Installer
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/addon.d/95-backup.sh:system/addon.d/95-backup.sh \
    vendor/xd/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# APN's
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/xd/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

include vendor/xd/config/sm.mk