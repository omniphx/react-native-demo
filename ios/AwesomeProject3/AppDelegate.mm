#import "AppDelegate.h"
#import <Sentry/SentrySDK.h>
#import <Sentry/SentryOptions.h>

#import <React/RCTBundleURLProvider.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [SentrySDK startWithConfigureOptions:^(SentryOptions * options) {
        options.dsn = @"https://20c09887423480ba7fdba4d0cf32e6bc@o4506068320518144.ingest.sentry.io/4506068321304576";
        options.debug = YES; // Enabled debug when first installing is always helpful
        options.enableTracing = YES;

        //Uncomment the following lines to add more data to your events
        //options.attachScreenshot = YES; //This will add a screenshot to the error events
        //options.attachViewHierarchy = YES; //This will add the view hierarchy to the error events
    }];
    //Remove the next line after confirming that your Sentry integration is working.
    // [SentrySDK captureMessage:@"This app uses Sentry!"];

  self.moduleName = @"AwesomeProject3";
  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end
