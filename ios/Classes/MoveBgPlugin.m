#import "MoveBgPlugin.h"
#if __has_include(<move_bg/move_bg-Swift.h>)
#import <move_bg/move_bg-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "move_bg-Swift.h"
#endif

@implementation MoveBgPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMoveBgPlugin registerWithRegistrar:registrar];
}
@end
