import React, {Component} from 'react';
import './Login.css';

class Login extends Component{
  render() {
    return (
      <div className='LoginPage'>
        <header className='Login-Header'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
        </header>
        <body className='Signin-Box'>
          <h2><br></br>Sign-In</h2>
          <p>
            <span class='Seperate-SI-UN'></span>
            Username
          </p>
          <input type="text" id="username" name="username" placeholder='username' size="50"></input>

          <p>Password</p>
          <input type="text" id="username" name="username" placeholder='username' size="50"></input>

          <p class='Reset-UN-PASS'>Having trouble signing in?</p> 
        </body>
      </div>
      
      
    );
  }
}

export default Login;
