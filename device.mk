#
# Copyright (C) 2017 The LineageOS Project
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

# call xiaomi custom
$(call inherit-product-if-exists, vendor/xiaomi/custom/XiaomiCustom.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from msm8998-common
$(call inherit-product, device/xiaomi/msm8998-common/msm8998.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/mixer_paths_tasha.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tasha.xml

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_dsx.kl

# IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# Camera
PRODUCT_PACKAGES += \
    MiuiCamera \
    libMiCameraHal_shim

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/camera_config.xml:system/etc/camera/camera_config.xml \
    $(LOCAL_PATH)/configs/camera/imx268_chromatix.xml:system/etc/camera/imx268_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/imx386_semco_chromatix.xml:system/etc/camera/imx386_semco_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/s5k3m3_semco_chromatix.xml:system/etc/camera/s5k3m3_semco_chromatix.xml \
    $(LOCAL_PATH)/configs/camera/sagit_imx268_liteon_chromatix.xml:system/etc/camera/sagit_imx268_liteon_chromatix.xml

# Call the proprietary setup
$(call inherit-product, vendor/xiaomi/sagit/sagit-vendor.mk)
