#
# Copyright 2020 The Android Open Source Project
# Copyright (C) 2020 The PixelExperience Project
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

# Inherit some common LOS stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Inherit from realme RMX1831
$(call inherit-product, device/realme/RMX1831/device.mk)

# ANX Camera
$(call inherit-product, vendor/ANXCamera/config.mk)

# Define first api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Specify arch for gapps
TARGET_GAPPS_ARCH=arm64

# Bootanimation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := fluid_RMX1831
PRODUCT_DEVICE := RMX1831
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme U1

PRODUCT_GMS_CLIENTID_BASE := android-realme
TARGET_VENDOR := realme

TARGET_VENDOR_PRODUCT_NAME := RMX1831
TARGET_VENDOR_DEVICE_NAME := RMX1831

# Fluid flags
PRODUCT_PRODUCT_PROPERTIES += \
	ro.fluid.maintainer=Radeon \
	ro.fluid.cpu=MTK_P70

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="RMX1831" \
    PRODUCT_NAME="RMX1831" \
    PRIVATE_BUILD_DESC="full_oppo6771_18611-user 9 PPR1.180610.011 eng.root.20200915.143154 release-keys"
    
BUILD_FINGERPRINT := "google/flame/flame:11/RQ3A.210705.001/7380771:user/release-keys"

