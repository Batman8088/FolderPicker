TARGET := iphone:clang:latest:14.0
INSTALL_PACKAGE_FORMAT = deb
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FolderPickerFix
FolderPickerFix_FILES = Tweak.x
FolderPickerFix_FRAMEWORKS = UIKit UniformTypeIdentifiers
FolderPickerFix_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
