#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Kaleidoscope stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="missi-user 12 SKQ1.211006.001 V13.0.4.0.SLMMIXM release-keys"

BUILD_FINGERPRINT := POCO/munch_global/munch:12/RKQ1.200826.002/V13.0.4.0.SLMMIXM:user/release-keys

# Project-Elixir Stuff
IS_PHONE := true
TARGET_USES_AOSP_RECOVERY := true
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_FACE_UNLOCK_SUPPORTED := true

ELIXIR_MAINTAINER := masarou & ᴍᴀʜɪ ᴠʏᴀꜱ

# Lawnchair
FORCE_LAWNCHAIR := true
