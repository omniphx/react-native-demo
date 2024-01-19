#import "RCTSentryModule.h"
#import <Sentry/SentrySDK.h>
#import <React/RCTLog.h>
#import <React/RCTBridgeModule.h>
#import "AppDelegate.h"

@implementation RCTSentryModule

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(captureMessage:(NSString *)message)
{
    RCTLogInfo(@"%@", message);
//    @try {
        NSArray *array = @[];
        id object = array[1]; // This will trigger an NSRangeException
//    } @catch (NSException *exception) {
//        RCTLogInfo(@"%@", exception);
//        [SentrySDK captureException:exception];
//    }
}

@end

