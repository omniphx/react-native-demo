/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import {SafeAreaView, useColorScheme} from 'react-native';

import {Colors} from 'react-native/Libraries/NewAppScreen';
import * as Sentry from '@sentry/react-native';
import Counter from './Counter';
import React from 'react';

Sentry.init({
  dsn: 'https://20c09887423480ba7fdba4d0cf32e6bc@o4506068320518144.ingest.sentry.io/4506068321304576',
  tracesSampleRate: 1.0,
  autoInitializeNativeSdk: false,
  debug: true,
});

function App(): JSX.Element {
  const isDarkMode = useColorScheme() === 'dark';

  const backgroundStyle = {
    backgroundColor: isDarkMode ? Colors.darker : Colors.lighter,
  };

  return (
    <SafeAreaView style={backgroundStyle}>
      <Counter />
    </SafeAreaView>
  );
}

export default Sentry.wrap(App);
