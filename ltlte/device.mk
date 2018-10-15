#Inherit from vendor
$(call inherit-product-if-exists, vendor/$DEVICES/$(TARGET_DEVICE)/$(TARGET_DEVICE)-vendor.mk)

# Inherit from common
$(call inherit-product, device/$DEVICES/$DEVICE_COMMON/device-common.mk)

LOCAL_PATH := device/$DEVICES/$(TARGET_DEVICE)

# System properties
-include device/$DEVICES/$DEVICE_COMMON/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/$DEVICES/$(TARGET_DEVICE)/overlay