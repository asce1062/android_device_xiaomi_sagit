$(call inherit-product, device/xiaomi/sagit/full_sagit.mk)

# Inherit some common AICP stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

PRODUCT_NAME := aicp_sagit
PRODUCT_DEVICE := sagit
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6
PRODUCT_MANUFACTURER := Xiaomi

# Google client ID.
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="sagit" \
    PRODUCT_NAME="sagit" \
    BUILD_FINGERPRINT="Xiaomi/sagit/sagit:7.1.1/NMF26X/V9.0.1.0.NCAMIEI:user/release-keys" \
    PRIVATE_BUILD_DESC="sagit-user 7.1.1 NMF26X V9.0.1.0.NCAMIEI release-keys"

