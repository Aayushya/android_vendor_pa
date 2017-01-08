#
# Copyright (C) 2016 The CyanogenMod Project
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

# Use the full CAF BSP
TARGET_USES_AOSP := false

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Include ParanoidAndroid common configuration
TARGET_BOOT_ANIMATION_RES := 720

include device/qcom/common/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/motorola/falcon/device.mk)

include vendor/pa/main.mk

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pa_falcon
PRODUCT_DEVICE := falcon
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := Moto G 2013
PRODUCT_MANUFACTURER := Motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="motorola" \
    PRODUCT_NAME="falcon" \
    BUILD_FINGERPRINT="motorola/falcon_reteu/falcon_umts:5.1/LPB23.13-56/56:user/release-keys"

TARGET_VENDOR := Motorola
