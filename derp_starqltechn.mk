#
# Copyright (C) 2021 AOSPK
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from starqltechn device
$(call inherit-product, device/samsung/starqltechn/device.mk)

# Inherit some common Derpfest stuff
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := derp_starqltechn
PRODUCT_DEVICE := starqltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G9600
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := "samsung/starqltezh/starqltechn:10/QP1A.190711.020/G9600ZHU9FWC3:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=starqltezh \
    PRIVATE_BUILD_DESC="starqltezh-user 10 QP1A.190711.020 G9600ZHU9FWC3 release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.PDA=G9600ZHU9FWC3 \
    ro.build.fingerprint=samsung/starqltezh/starqltechn:10/QP1A.190711.020/G9600ZHU9FWC3:user/release-keys