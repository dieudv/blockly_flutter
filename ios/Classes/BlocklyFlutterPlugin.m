#import "BlocklyFlutterPlugin.h"
#import <blockly_flutter/blockly_flutter-Swift.h>

@implementation BlocklyFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBlocklyFlutterPlugin registerWithRegistrar:registrar];
}
@end
