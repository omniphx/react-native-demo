// import * as Sentry from '@sentry/react-native';
import {NativeModules} from 'react-native';

const {SentryModule} = NativeModules;

export function errorCallback() {
  // throw new Error('New and difference error');
  // throw new Error('Async error');
  // Sentry.nativeCrash();
  SentryModule.captureMessage('Sentry Exception Test');
}
