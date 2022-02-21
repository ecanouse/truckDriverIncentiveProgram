import React, {Component} from 'react';
import './Login.css';

class Login extends Component{
  render() {
    return (
      <div class='LoginPage'>
        <header class='Login-Header'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
        </header>
        <body className='Signin-Box'>
          <h2><br/>Sign-In</h2>
          <p>
            <span class='Seperate-SI-UN'></span>
            Username
          </p>
          <input type="text" id="username" name="username" placeholder='username' size="55"></input>

          <p>Password</p>
          <input type="text" id="username" name="username" placeholder='username' size="55"></input>
        
          <p class='Reset-UN-PASS'>Having trouble signing in?</p>
          <a href='DriverHome'>  
            <button class='LoginButton'>Log-in</button>
          </a>
          <a class='Reset-UN-PASS' href='ResetPass'>Click here to reset your Password</a>
          <a class='Reset-UN-PASS' href='DiscoverUN'><br/><br/>Click here to discover your Username</a> 
        </body>
      </div>
      
      
    );
  }
}

export default Login;
