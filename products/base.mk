#squisher
TARGET_CUSTOM_RELEASETOOL := ./vendor/hydrah2o/tools/squisher

$(call inherit-product, device/common/gps/gps_eu_supl.mk)

#Skip test
LIBCORE_SKIP_TESTS := true
BLUEZ_SKIP_TESTS := true
SKIA_SKIP_TESTS := true

PRODUCT_PACKAGES += \
		Camera \
		Superuser \
		MusicFX \
		AndroidTerm \
		ROMControl \
    	        VideoEditor \
	        VoiceDialer \
    	        Basic \
    	        Launcher2 \
    	        MusicVisualization \
    	        LatinIME \
                AppWidgetPicker \
                Trebuchet \
                Stk \
                FileExplorer \
    	        su \
	        audio_effects.conf


TEAM_PRODUCT := hydra-h2o
TEAM_NAME := -
PRODUCT_VERSION_DEVICE_SPECIFIC := hydra-h2o
PRODUCT_VERSION_MAJOR := 1
PRODUCT_VERSION_MINOR := 0

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGE_OVERLAYS += vendor/hydrah2o/overlay/common

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    wifi.supplicant_scan_interval=240 \
    ro.modversion=$(TEAM_PRODUCT) \
    ro.build.romversion=$(PRODUCT_ROM_FILE) \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    ro.stats.devname=neophyte-x360 \
    ro.stats.romname=h2o

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

