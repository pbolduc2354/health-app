import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import MedInfo from "./components/MedInfo.jsx"

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to your medical health file</h1>
        </header>
        <MedInfo />
      </div>
    );
  }
}

export default App;
