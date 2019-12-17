LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_MODULE := libz
LOCAL_CPPFLAGS := -O2
LOCAL_CFLAGS :=  -O2 -std=gnu99

LOCAL_C_INCLUDES := $(LOCAL_PATH)

LOCAL_SRC_FILES :=	../adler32.c \
					../compress.c \
					../crc32.c \
					../deflate.c \
					../gzclose.c \
					../gzlib.c \
					../gzread.c \
					../gzwrite.c \
					../infback.c \
					../inffast.c \
					../inflate.c \
					../inftrees.c \
					../trees.c \
					../uncompr.c \
					../zutil.c \

include $(BUILD_STATIC_LIBRARY)