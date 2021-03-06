LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    android_media_SoundPool_SoundPoolImpl.cpp \
    SoundPool.cpp \
    SoundPoolThread.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libutils \
    libandroid_runtime \
    libnativehelper \
    libmedia \
    libmediandk \
    libbinder

LOCAL_MODULE:= libsoundpool

LOCAL_CFLAGS += -Wall -Werror -Wunused -Wunreachable-code

include $(BUILD_SHARED_LIBRARY)
