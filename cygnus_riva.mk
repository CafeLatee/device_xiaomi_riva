#
# Copyright (C) 2016 The CyanogenMod Project
#               2017-2019 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Cygnus stuff
$(call inherit-product, vendor/cygnus/configs/common.mk)
include device/qcom/common/common.mk

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
TARGET_BOOT_ANIMATION_RES := 1080

WITH_GAPPS := true

CYGNUS_BUILD_TYPE := OFFICIAL

# Inherit from riva device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := riva
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi 5A
PRODUCT_NAME := cygnus_riva

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := riva

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="riva" \
    PRODUCT_NAME="riva" \
    PRIVATE_BUILD_DESC="coral-user 10 QQ2A.200501.001.B2 6352890 release-keys"

BUILD_FINGERPRINT := "google/coral/coral:10/QQ2A.200501.001.B2/6352890:user/release-keys"

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
