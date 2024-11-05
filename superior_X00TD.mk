#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common SuperiorOS stuff
$(call inherit-product, vendor/superior/config/common.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_MATLOG := false
USE_MOTO_CALCULATOR := true

# Offline Charging
TARGET_INCLUDE_PIXEL_CHARGER := true

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := superior_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=ASUS_X00TD \
    PRODUCT_NAME=WW_X00TD

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 8.1.0 OPM1 2305 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "asus/X00T/WW_X00T:8.1.0/OPM1/15.2016.1810.334-20181019:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.vendor.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.system.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.product.build.fingerprint=$(BUILD_FINGERPRINT) \
    ro.system_ext.build.fingerprint=$(BUILD_FINGERPRINT)
