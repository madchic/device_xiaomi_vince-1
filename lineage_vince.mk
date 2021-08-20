#
# Copyright (C) 2020 The LineageOS Project
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
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/rz-edv.de/security/releasekey
PRODUCT_PROPERTY_OVERRIDES := \
       net.dns1=9.9.9.9 \
       net.dns2=1.1.1.3

GAPPS_VARIANT := pico
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_MATCHING_DPI := true
GAPPS_EXCLUDED_PACKAGES += CalSync
GAPPS_EXCLUDED_PACKAGES += SetupWizard
GAPPS_EXCLUDED_PACKAGES += Search
GAPPS_EXCLUDED_PACKAGES += FaceLock

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from vince device
$(call inherit-product, device/xiaomi/vince/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_DISABLE_POSTRENDER_CLEANUP := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vince
PRODUCT_NAME := lineage_vince
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 5 Plus
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vince-user 8.1.0 OPM1.171019.019 V11.0.2.0.OEGMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/vince/vince:8.1.0/OPM1.171019.019/V11.0.2.0.OEGMIXM:user/release-keys"
# HAVOC atlternative
#BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210405.005/7181113:user/release-keys"

PRODUCT_PACKAGES += F-Droid
PRODUCT_PACKAGES += DAVdroid
PRODUCT_PACKAGES += Tasks
PRODUCT_PACKAGES += KeePassDroid
PRODUCT_PACKAGES += Conversations
PRODUCT_PACKAGES += SatStat
PRODUCT_PACKAGES += Nextcloud
PRODUCT_PACKAGES += ULogger
PRODUCT_PACKAGES += OsmAnd
PRODUCT_PACKAGES += Etar
PRODUCT_PACKAGES += SWEBrowser
PRODUCT_PACKAGES += NitroShare
PRODUCT_PACKAGES += MuPDF
PRODUCT_PACKAGES += FairMail
PRODUCT_PACKAGES += AuroraStore
PRODUCT_PACKAGES += Acastus
#PRODUCT_PACKAGES += AnkiDroid

#OpenGapps
#$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)

