/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import React, {useState} from 'react';
import {Button, Text, View} from 'react-native';
// import * as Sentry from '@sentry/react-native';
import {errorCallback} from './utils';

function Counter(): JSX.Element {
  const [count, setCount] = useState(0);

  const calculatedCount = count * 2;

  const handleCount = () => {
    setCount(count + 1);
    // Sentry.nativeCrash();
    errorCallback();
  };

  return (
    <View>
      <Button title="Add" onPress={handleCount} />
      <Text>Count: {count}</Text>
      <Text>Calculated Count: {calculatedCount}</Text>
    </View>
  );
}

export default Counter;
