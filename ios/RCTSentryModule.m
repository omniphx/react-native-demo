#import "RCTSentryModule.h"
#import <Sentry/SentrySDK.h>
#import <React/RCTLog.h>
#import <React/RCTBridgeModule.h>

@implementation RCTSentryModule

RCT_EXPORT_MODULE()
- (void)aMethodThatMightFail:(NSError **)error {
      NSArray *array = @[];
      id object = array[1]; // This will trigger an NSRangeException
}

RCT_EXPORT_METHOD(captureMessage:(NSString *)message)
{
    RCTLogInfo(@"%@", message);
    NSError *error = nil;
    RCTLogInfo(@"%@", @"Will it fail?");
    [self aMethodThatMightFail:&error];
    RCTLogInfo(@"%@", @"Bad!");
    if (error) {
        [SentrySDK captureError:error];
    }
}

@end

