export ARCHS = arm64 arm64e
export CLI = 0
export TARGET = iphone:clang:14.5:15.0
export FINALPACKAGE=1
export THEOS_DEVICE_IP=192.168.1.112

PACKAGE_VERSION = 3.0.1

INSTALL_TARGET_PROCESSES = SpringBoard
frame_FRAMEWORKS = Foundation UIKit AVFoundation

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = frame

frame_FILES = $(wildcard ./src/*m)
frame_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += framecli
include $(THEOS_MAKE_PATH)/aggregate.mk
