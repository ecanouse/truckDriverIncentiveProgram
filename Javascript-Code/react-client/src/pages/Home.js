import React, {Component} from 'react';
import logo from '../logo.svg';
import './Home.css';

class Home extends Component{
  state = {
      test: ''
    }

  componentDidMount() {
    this.getTest();
  }

  getTest = () => {
    fetch('/test')
    .then(response => response.json())
    .then(response => this.setState({test: response.message}))
    .catch(err => console.error(err))
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <p>
            New React App
          </p>
          <p>
            {this.state.test}
          </p>
          <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
          </a>
        </header>
      </div>
    );
  }
}

export default Home;
