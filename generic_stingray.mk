# Add CameraBrowser for testing PTP support until Gallery supports it
PRODUCT_PACKAGES := CameraBrowser

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)
$(call inherit-product, device/moto/umts_everest/device.mk)
$(call inherit-product-if-exists, vendor/moto/wingray/wingray-vendor.mk)

# Overrides
PRODUCT_DEVICE := umts_everest
PRODUCT_LOCALES += en_US
PRODUCT_MODEL := MZ601
PRODUCT_NAME := umts_everest
