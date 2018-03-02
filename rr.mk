$(call inherit-product, device/xiaomi/sagit/full_sagit.mk)

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

PRODUCT_NAME := rr_sagit
PRODUCT_DEVICE := sagit
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/sagit/sagit:7.1.1/NMF26X/V9.2.2.0.NCAMIEK:user/release-keys \
    PRIVATE_BUILD_DESC="sagit-user 7.1.1 NMF26X V9.2.2.0.NCAMIEK release-keys"
