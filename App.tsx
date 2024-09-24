import React, {useState} from 'react';
import {Button, Dimensions, SafeAreaView, StyleSheet, Text, View} from 'react-native';
import { TextSettingsView } from './Native';
function App(): React.JSX.Element {
  const nameArray = ['Alice', 'Bob', 'Charlie', 'Can', 'David', 'Eve'];

  const getRandomName = () => {
    const randomIndex = Math.floor(Math.random() * nameArray.length);
    return nameArray[randomIndex];
  };

  const [currentName, setCurrentName] = useState(getRandomName);

  const handleChangeName = () => {
    setCurrentName(getRandomName);
  };
  return (
    <SafeAreaView
      style={{flex: 1, justifyContent: 'center', alignItems: 'center'}}>
      
      <TextSettingsView 
        style={ styles.wrapper } 
        /> 
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  wrapper: {
   width:Dimensions.get('window').width-20,
   alignItems:"center",
   justifyContent:"center",
   height:Dimensions.get('window').height-20,
   backgroundColor:"#fff"
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
  },
  highlight: {
    fontWeight: '700',
  },
});

export default App;
