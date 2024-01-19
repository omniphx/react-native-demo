To reproduce sentry issue:

1. Clone omniphx/react-native-demo (github.com)
2. npm install + bundle install
3. Update ios/sentry.properties
4. pm run ios
5. Open app and click “Add”
6. Should see an exception caused by this native file: react-native-demo/ios/RCTSentryModule.m at main · omniphx/react-native-demo (github.com)
