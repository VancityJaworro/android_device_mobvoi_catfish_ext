# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Build using minimal manifest
ALLOW_MISSING_DEPENDENCIES=true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := catfish_ext
PRODUCT_NAME := omni_catfish_ext
PRODUCT_BRAND := mobvoi
PRODUCT_MODEL := TicWatch Pro 2020
PRODUCT_MANUFACTURER := Mobvoi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="mobvoi/catfish_ext/catfish_ext:9/PMP2.191203.001/84:user/release-keys" \
    PRIVATE_BUILD_DESC="catfish_ext-user 9 PMP2.191203.001 84 release-keys"
