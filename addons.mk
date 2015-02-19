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
    vendor/xd/prebuilt/common/addon.d/91-v4a.sh:system/addon.d/91-v4a.sh \
    vendor/xd/prebuilt/common/priv-app/ViPER4Android_FX_A4.x/ViPER4Android_FX_A4.x.apk:system/priv-app/ViPER4Android_FX_A4/ViPER4Android_FX_A4.x.apk \
    vendor/xd/prebuilt/common/priv-app/ViPER4Android_FX_A4.x/lib/arm/libV4AJniUtils.so:system/priv-app/ViPER4Android_FX_A4/lib/arm/libV4AJniUtils.so \
    vendor/xd/prebuilt/common/lib/soundfx/libv4a_fx_ics.so:system/lib/soundfx/libv4a_fx_ics.so \
    vendor/xd/prebuilt/common/lib/soundfx/libaudiopreprocessing.so:system/lib/soundfxlibaudiopreprocessing.so \
    vendor/xd/prebuilt/common/lib/soundfx/libbundlewrapper.so:system/lib/soundfx/libbundlewrapper.so \
    vendor/xd/prebuilt/common/lib/soundfx/libdownmix.so:system/lib/soundfx/libdownmix.so \
    vendor/xd/prebuilt/common/lib/soundfx/libeffectproxy.so:system/lib/soundfx/libeffectproxy.so \
    vendor/xd/prebuilt/common/lib/soundfx/libfmas.so:system/lib/soundfx/libfmas.so \
    vendor/xd/prebuilt/common/lib/soundfx/libldnhncr.so:system/lib/soundfx/libldnhncr.so \
    vendor/xd/prebuilt/common/lib/soundfx/libqcomvoiceprocessing.so:system/lib/soundfx/libqcomvoiceprocessing.so \
    vendor/xd/prebuilt/common/lib/soundfx/libvisualizer.so:system/lib/soundfx/libvisualizer.so \
    vendor/xd/prebuilt/common/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/xd/prebuilt/common/etc/audio_policy.conf:system/etc/audio_policy.conf \
    vendor/xd/prebuilt/common/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf 

# Okay Google
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/etc/permissions/com.motorola.triggerenroll.xml:system/etc/permissions.com.motorola.triggerenroll.xml \
    vendor/xd/prebuilt/common/lib/libtrainingcheck.so:system/lib/libtrainingcheck.so \
    vendor/xd/prebuilt/common/priv-app/TriggerEnroll/TriggerEnroll.apk:system/priv-app/TriggerEnroll/TriggerEnroll.apk \
    vendor/xd/prebuilt/common/priv-app/TriggerTrainingService/TriggerTrainingService.apk:system/priv-app/TriggerTrainingService/TriggerTrainingService.apk 

# Screen recorder package and lib
PRODUCT_PACKAGES += \
    ScreenRecorder \
    libscreenrecorder

# PerformanceControl
PRODUCT_PACKAGES += \
    PerformanceControl

# Installer
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/addon.d/95-backup.sh:system/addon.d/95-backup.sh \
    vendor/xd/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# APN's
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/xd/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# AdBlocker Files
PRODUCT_COPY_FILES += \
    vendor/xd/prebuilt/common/etc/hosts.alt:system/etc/hosts.alt \
    vendor/xd/prebuilt/common/etc/hosts.og:system/etc/hosts.og

include vendor/xd/config/sm.mk