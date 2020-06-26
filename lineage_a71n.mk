#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# android_device_samsung_r1q #alpha_release

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit r1q device.
$(call inherit-product, device/samsung/a71n/device.mk)

# Inherit some needed stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_a71n
PRODUCT_DEVICE := a71n
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A705(F/DS)
PRODUCT_MANUFACTURER := samsung

# Device stuff, important needed stuff
DEVICE_MAINTAINERS := "firemax13"

BUILD_FINGERPRINT := "samsung/a71naxx/a71:10/QP1A.190711.020/A715FXXU2ATE8:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a71naxx-user 10 QP1A.190711.020 A715FXXU2ATE8 release-keys" \
    PRODUCT_NAME="a71n" \
    TARGET_DEVICE="a71n"

PRODUCT_GMS_CLIENTID_BASE := android-samsung
