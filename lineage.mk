# Release name
PRODUCT_RELEASE_NAME := S8

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from AOSP 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit CM's custom product configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Call device specific makefile
$(call inherit-product, device/HOMTOM/S8/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_S8
PRODUCT_DEVICE := S8
PRODUCT_BRAND := HOMTOM
PRODUCT_MODEL := S8
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_RESTRICT_VENDOR_FILES := false
