To reproduce sentry issue:

1. Clone omniphx/react-native-demo (github.com)
2. npm install + bundle install
3. Update ios/sentry.properties
4. pm run ios
5. Open app and click “Add”
6. Should see an exception caused by this native file: react-native-demo/ios/RCTSentryModule.m at main · omniphx/react-native-demo (github.com)

Here's a recording where the uncaught exception is not being captured:
https://github.com/omniphx/react-native-demo/assets/3722405/c149d953-91fe-45bf-83dd-abc2a53eb4f2

