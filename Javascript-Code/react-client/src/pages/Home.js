import React, {Component} from 'react';
import logo from '../logo.svg';
import './Home.css';

class Home extends Component{
  state = {
      test: []
    }

  componentDidMount() {
    this.getTest();
  }

  getTest = () => {
    fetch('/test')
    .then(response => response.json())
    .then(response => this.setState({test: response.data}))
    .catch(err => console.error(err))
  }

  renderTest = ({id, name}) => <p key={id}>{name}</p>
  render() {
    return (
      <div className='HomePage'>
        <header className='Home-Header'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
        </header>
        <div className='home-buttons'>
          <a href='login'><button className='home-button'>Login</button></a>
          <a href='signup'><button className='home-button'>Signup</button></a>
        </div>
      </div>      
    );
  }
}

export default Home;
