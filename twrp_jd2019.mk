#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := L78071

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from jd2019 device
$(call inherit-product, device/lenovo/jd2019/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := jd2019
PRODUCT_NAME := twrp_jd2019
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Z5s
PRODUCT_MANUFACTURER := lenovo
