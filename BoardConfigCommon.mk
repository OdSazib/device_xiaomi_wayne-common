#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 Xioami-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
include device/xiaomi/sdm660-common/BoardConfigCommon.mk

WAYNE_COMMON_PATH := device/xiaomi/wayne-common

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
DEVICE_MANIFEST_FILE += $(WAYNE_COMMON_PATH)/configs/vintf/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/wayne_defconfig
TARGET_KERNEL_SOURCE := kernel/msm-4.19
TARGET_KERNEL_VERSION := 4.19

# Vendor Security patch level
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# WLAN MAC
WLAN_MAC_SYMLINK := true

# Inherit the proprietary files
include vendor/xiaomi/wayne-common/BoardConfigVendor.mk
