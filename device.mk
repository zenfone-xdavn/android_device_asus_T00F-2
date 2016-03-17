#
# Copyright 2014 The Android Open Source Project
# Copyright (C) 2015 The CyanogenMod Project
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

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

DEVICE_PACKAGE_OVERLAYS := \
    device/asus/T00F/overlay

# Key layout files
PRODUCT_COPY_FILES += \
    device/asus/T00F/idc/synaptics_dsx.idc:system/usr/idc/synaptics_dsx.idc \
    device/asus/mofd-common/keylayout/ftxxxx_ts.kcm:system/usr/keychars/synaptics_dsx.kcm \
    device/asus/mofd-common/keylayout/ftxxxx_ts.kl:system/usr/keylayout/synaptics_dsx.kl \
    device/asus/mofd-common/keylayout/lm49453-audio_Intel_MID_Audio_Jack.kl:system/usr/keylayout/cloverview_audio_Intel_MID_Audio_Jack.kl


# OTA Packaging / Bootimg creation
PRODUCT_PACKAGES += \
    pack_intel \
    unpack_intel

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    resize2fs_static \
    setup_fs

$(call inherit-product-if-exists, vendor/asus/T00F/T00F-vendor.mk)

# Inherit from cvtlp-common
$(call inherit-product, device/asus/cvtlp-common/cvtlp.mk)
