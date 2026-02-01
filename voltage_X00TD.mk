#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common crDroid stuff
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common device props
#INFINITY_BUILD_TYPE := UNOFFICIAL
#INFINITY_MAINTAINER := Tokodepia
VOLTAGE_BUILD_TYPE := UNOFFICIAL
#FULL_SYSTEM_OPTIMIZE_JAVA := true
#SYSTEM_OPTIMIZE_JAVA := true
#SYSTEMUI_OPTIMIZE_JAVA := true
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_HAS_UDFPS := false
TARGET_SUPPORTS_QUICK_TAP := true
#WITH_GAPPS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := voltage_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sdm660_64-user 10 QKQ1 72 release-keys" \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    BuildFingerprint=asus/ASUS_X00TD/ASUS_X00TD:10/QKQ1/17.2017.2012.438-20201203:user/release-keys
