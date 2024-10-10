#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2021 AOSPK
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0

# WARNING: Everything listed here will be built on ALL platforms,
# including x86, the emulator, and the SDK.  Modules must be uniquely
# named (liblights.tuna), and must build everywhere, or limit themselves
# to only building on ARM if they include assembly. Individual makefiles
# are responsible for having their own logic, for fine-grained control.

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),starqlte starqltechn)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
