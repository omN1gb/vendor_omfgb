$(call inherit-product, device/htc/passion/full_passion.mk)
$(call inherit-product, vendor/omfgb/products/common.mk)
$(call inherit-product, vendor/omfgb/products/gsm.mk)
$(call inherit-product, vendor/omfgb/products/bcm_fm_radio.mk)

build-name := OMFGB-Passion

include vendor/omfgb/products/nightly-version.mk

PRODUCT_NAME := OMFGB_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build-version) PRODUCT_NAME=passion BUILD_ID=GRK39F BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

PRODUCT_PACKAGES += \
	Stk \
	Torch \
	DSPManager \
	FileManager

PRODUCT_PROPERTY_OVERRIDES += \
	ro.ril.enable.managed.roaming=1 \
	ro.ril.oem.nosim.ecclist=911,112,999,000,08,118,120,122,110,119,995 \
	ro.ril.emc.mode=2

PRODUCT_COPY_FILES +=  \
    vendor/omfgb/prebuilt/common/etc/init.d/05mountsd:system/etc/init.d/05mountsd

PRODUCT_PACKAGE_OVERLAYS += vendor/omfgb/overlay/passion
