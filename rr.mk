$(call inherit-product, device/xiaomi/sagit/full_sagit.mk)

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Device identifiers
PRODUCT_DEVICE := sagit
PRODUCT_NAME := rr_sagit
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := sagit

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=sagit \
        PRIVATE_BUILD_DESC="sagit-user 8.0.0 OPR1.170623.027 V9.5.3.0.OCAMIFA release-keys"

BUILD_FINGERPRINT := Xiaomi/sagit/sagit:8.0.0/OPR1.170623.027/V9.5.3.0.OCAMIFA:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
