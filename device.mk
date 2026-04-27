#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/lge/l01k

# Inherit common repository
$(call inherit-product, device/lge/joan-common/joan-common.mk)

# Felica
include packages/apps/FelicaService/device.mk

# NFC
PRODUCT_PACKAGES += \
	libhidlbase_shim

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml

PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Inherit proprietary blobs
$(call inherit-product, vendor/lge/l01k/l01k-vendor.mk)
