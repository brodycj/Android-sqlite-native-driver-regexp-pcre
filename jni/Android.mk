# see http://mobile.tutsplus.com/tutorials/android/ndk-tutorial/

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)  
LOCAL_LDLIBS := -llog
LOCAL_MODULE    := sqlc-native-driver
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../sqlite-amalgamation
LOCAL_CFLAGS += -DSQLITE_TEMP_STORE=2 -DSQLITE_THREADSAFE=2
LOCAL_CFLAGS += -DSQLITE_ENABLE_FTS3 -DSQLITE_ENABLE_FTS3_PARENTHESIS -DSQLITE_ENABLE_FTS4 -DSQLITE_ENABLE_RTREE
LOCAL_SRC_FILES := ../native/sqlc_all.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../sqlite3-pcre
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../pcre-8.37
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../pcre-8.37-generic
# Included by sqlc_all.c:
#LOCAL_SRC_FILES += ../sqlite3-pcre/pcre.c
LOCAL_CFLAGS += -DHAVE_CONFIG_H -DSUPPORT_PCRE8
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../stubs
LOCAL_SRC_FILES += ../pcre-8.37/pcre_byte_order.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_compile.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_config.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_dfa_exec.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_exec.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_fullinfo.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_get.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_globals.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_jit_compile.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_maketables.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_newline.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_ord2utf8.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_printint.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_refcount.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_string_utils.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_study.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_tables.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_ucd.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_valid_utf8.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_version.c
LOCAL_SRC_FILES += ../pcre-8.37/pcre_xclass.c
LOCAL_SRC_FILES += ../pcre-8.37-generic/pcre_chartables.c
LOCAL_SRC_FILES += ../sqlite-amalgamation/sqlite3.c
include $(BUILD_SHARED_LIBRARY)

