# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ido device
$(call inherit-product, device/xiaomi/ido/device.mk)

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/mokee/config/common_full_phone.mk)

# Assert
PRODUCT_DEVICE := ido
PRODUCT_NAME := mokee_ido
PRODUCT_BRAND := Xiaomi
BOARD_VENDOR := xiaomi
PRODUCT_MODEL := Redmi 3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Build fingerprint
BUILD_FINGERPRINT := "Xiaomi/ido/ido:5.1.1/LMY47V/V9.6.1.0.LAICNFD:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ido-user 5.1.1 LMY47V V9.6.1.0.LAICNFD release-keys"