# Inherit device configuration for wx_na_do.
$(call inherit-product, device/nvidia/wx_na_do/full_wx_na_do.mk)

# Inherit some common EOS stuff.
$(call inherit-product, vendor/eos/config/common_full_tablet_wifionly.mk)

# Copy Bootanimation
PRODUCT_COPY_FILES += \
vendor/eos/prebuilt/common/bootanimation/1080.zip:system/media/bootanimation.zip

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=wx_na_do \
    TARGET_DEVICE=shieldtablet \
    BUILD_FINGERPRINT="nvidia/wx_na_do/shieldtablet:5.0.1/LRX22C/29082_493.9700:user/release-keys" \
    PRIVATE_BUILD_DESC="wx_na_do-user 5.0.1 LRX22C 29082_493.9700 release-keys"

PRODUCT_NAME := eos_wx_na_do
PRODUCT_DEVICE := wx_na_do
