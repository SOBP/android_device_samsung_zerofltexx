# Initialise device config
$(call inherit-product, device/samsung/zerofltexx/full_zerofltexx.mk)

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

PRODUCT_# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@1.0-service-sdm \
    vendor.lineage.livedisplay-V1.0-java

PRODUCT_BOOT_JARS += \
    vendor.lineage.livedisplay-V1.0-java
BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="zerofltexx" \
    TARGET_DEVICE="zeroflte"

PRODUCT_NAME := aosp_zerofltexx
PRODUCT_DEVICE := zerofltexx
WITH_DEXPREOPT := false
