import React, { Component } from 'react';
import logo from './summit-logo.png';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h2>React Application</h2>
        </div>
        <p className="App-intro">
          Hello Gdańsk! How are you?
        </p>
      </div>
    );
  }
}

export default App;
