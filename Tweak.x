#import <UIKit/UIKit.h>
#import <UniformTypeIdentifiers/UniformTypeIdentifiers.h>

// Example: Hook the app's existing method or fix UIDocumentPickerViewController initialization
%hook UIDocumentPickerViewController

- (instancetype)initForOpeningContentTypes:(NSArray<UTType *> *)contentTypes asCopy:(BOOL)asCopy {
    // Forces folder selection mode if needed, or customize for your target class
    return %orig(@[UTTypeFolder], NO);
}

%end
