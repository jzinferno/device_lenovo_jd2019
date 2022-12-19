#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from jd2019 device
$(call inherit-product, device/lenovo/jd2019/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := jd2019
PRODUCT_NAME := omni_jd2019
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Z5s
PRODUCT_MANUFACTURER := lenovo
