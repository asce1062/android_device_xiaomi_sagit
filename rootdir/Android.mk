LOCAL_PATH:= $(call my-dir)

# Device config scripts

include $(CLEAR_VARS)
LOCAL_MODULE       := init.tfa.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := bin/init.tfa.sh
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_EXECUTABLES)
include $(BUILD_PREBUILT)

# Device init scripts

include $(CLEAR_VARS)
LOCAL_MODULE       := init.sagit.rc
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := etc/init.sagit.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR_ETC)/init/hw
include $(BUILD_PREBUILT)
