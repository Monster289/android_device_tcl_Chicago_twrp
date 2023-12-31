#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 PitchBlack Recovery Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := Chicago
PRODUCT_USE_DYNAMIC_PARTITIONS := true
DEVICE_PATH := device/tcl/Chicago

# Inherit some common PitchBlack stuff.

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root) \
    $(LOCAL_PATH)/prebuilt/dtb:dtb.img

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Chicago
PRODUCT_NAME := omni_Chicago
PRODUCT_BRAND := TCL
PRODUCT_MODEL := flex v
PRODUCT_MANUFACTURER := tcl
PRODUCT_RELEASE_NAME := flex v

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="TCL/T850Y_EEA/Chicago11/RKQ1.210107/6B22user/release-keys" \
    PRIVATE_BUILD_DESC="Chicago-user 11R/KQ1.210107.001/6B22:user/release-keys"

# Stock flashable zips
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.allow.mock.location=1

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31 \
