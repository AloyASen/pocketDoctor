#import "PocketDoctorPlugin.h"
#if __has_include(<pocket_doctor/pocket_doctor-Swift.h>)
#import <pocket_doctor/pocket_doctor-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pocket_doctor-Swift.h"
#endif

@implementation PocketDoctorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPocketDoctorPlugin registerWithRegistrar:registrar];
}
@end
