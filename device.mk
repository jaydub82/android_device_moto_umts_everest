#
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

$(call inherit-product, device/moto/wingray/device_base.mk)

PRODUCT_COPY_FILES += \
    device/moto/umts_everest/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options \
    device/moto/umts_everest/prop/libmoto_ril.so:system/lib/libmoto_ril.so \
    device/moto/umts_everest/prop/chat-ril:system/bin/chat-ril \
    device/moto/umts_everest/prop/pppd-ril:system/bin/pppd-ril \
    device/moto/umts_everest/prop/tty2ttyd:system/bin/tty2ttyd \
    device/moto/umts_everest/prop/libril.so:system/lib/libril.so \
    device/moto/umts_everest/prop/libpppd_plugin-ril.so:system/lib/libpppd_plugin-ril.so \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml 

# Overrides
DEVICE_PACKAGE_OVERLAYS := \
    device/moto/utms_everest/overlay device/moto/wingray/overlay
