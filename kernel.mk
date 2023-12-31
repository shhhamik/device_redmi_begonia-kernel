DEVICE_KERNEL_PATH := device/redmi/begonia-kernel

# DTB
PRODUCT_COPY_FILES += \
    $(DEVICE_KERNEL_PATH)/dtb.img:dtb.img

# Kernel
PRODUCT_COPY_FILES += \
    $(DEVICE_KERNEL_PATH)/Image:kernel

# Kernel modules
KERNEL_MODULES_ORIG := $(DEVICE_KERNEL_PATH)/modules
KERNEL_MODULES_DEST := $(TARGET_COPY_OUT_VENDOR)/lib/modules

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(KERNEL_MODULES_ORIG)/,$(KERNEL_MODULES_DEST))

