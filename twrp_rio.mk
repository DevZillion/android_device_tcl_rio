# Release name
PRODUCT_RELEASE_NAME := rio

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
# For PitchBlack use vendor/pb/config/common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/tcl/rio/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/tcl/rio/recovery/root,recovery/root)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_rio
PRODUCT_DEVICE := rio
PRODUCT_MODEL := TCL Rio
PRODUCT_BRAND := tcl
PRODUCT_MANUFACTURER := tcl
PRODUCT_GMS_CLIENTID_BASE := android-tcl
