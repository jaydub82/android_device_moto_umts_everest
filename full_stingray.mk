# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for stingray hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# A few more packages that aren't quite used on all builds
PRODUCT_PACKAGES := \
        HoloSpiralWallpaper \
        LiveWallpapersPicker \
        VisualizationWallpapers

# Camera
PRODUCT_PACKAGES += \
    Camera

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/moto/umts_everest/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_umts_everest
PRODUCT_DEVICE := umts_everest
PRODUCT_BRAND := MOTO
PRODUCT_MODEL := MZ601
PRODUCT_MANUFACTURER := motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=RTCOREEU BUILD_ID=ITL41F BUILD_DISPLAY_ID="EOS IML74K Nightly $(EOS_BUILD_NUMBER)" BUILD_FINGERPRINT="MOTO/RTCOREEU/umts_everest:3.2/H.6.5-17-3/1321319666:user/ota-rel-keys,release-keys" PRIVATE_BUILD_DESC="umts_everest-user 3.2 H.6.5-17-3 1321319666 ota-rel-keys,release-keys"
