$(call inherit-product, device/xiaomi/sagit/full_sagit.mk)

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

WITH_SU := false

PRODUCT_NAME := rr_sagit
PRODUCT_DEVICE := sagit
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6
PRODUCT_MANUFACTURER := Xiaomi

# Google client ID.
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rr.version=RR-O-v6.0.0-20180312-sagit-Unofficial \
    ro.rr.releasetype=Unofficial \
    ro.rr.build.version=. \
    ro.modversion=RR-O-v6.0.0-20180312-sagit-Unofficial \
    rr.build.type=Unofficial \
    rr.ota.version=20180312 \
    ro.rr.tag=android-8.1.0_r15 \
    ro.rr.display.version=RR-O-v6.0.0-20180312-sagit-Unofficial

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="sagit" \
    PRODUCT_NAME="sagit" \
    BUILD_FINGERPRINT="Xiaomi/sagit/sagit:8.0.0/OPR1.170623.027/V9.2.3.0.OCAMIEK:user/release-keys" \
    PRIVATE_BUILD_DESC="sagit-user 8.0.0 OPR1.170623.027 V9.2.3.0.OCAMIEK release-keys"
