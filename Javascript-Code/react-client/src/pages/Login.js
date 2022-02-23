import React, {Component} from 'react';
import './Login.css';

class Login extends Component{

  //state used to store username & password from inputs
  state = {
    username: '',
    password: ''
  };

  //handleChange takes the value from input boxes & updates the state
  //param: event --> access to element calling fxn
  handleChange = (event) => {
    const target = event.target;
    const name = target.name
    const value = target.value
    
    this.setState({
      [name]: value
    });

  };

  //issue with preventDefault
  //issue with not connecting to the server & json errors
  //maybe try axion? maybe start from the beginning?
  //learn more about fetch first.
  submit = (event) => {
    event.preventDefault(); //prevent's browser from reloading
    console.log("Submitting to server");
    //stored data
    var payload = {
      username: this.state.username,
      password: this.state.password
    };

    //sending data to node server
    //we may want to switch to using axios, a bit easier to digest than fetch commands
    console.log("sending payload of :");
    console.log(payload)
    console.log("end of payload");
    fetch('/login-attempt', {
      method: 'POST', //post request
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload) //put into json form
    })
    .then(response => {
      if( response.status === 200 ) {
        console.log('successful!');
      }
    })  //checks for success
    // .then(data => {
    //   console.log('Success', payload);
    // })
    .catch((error) => {
      console.error('Error :(', error);
    });

  };

  render() {

    console.log(this.state);

    return (

      //note that I'm getting some errors/warnings with a body element
      //being rendered inside a div element, we may want to fix that
      <body>
      <div className='LoginPage'>
        <header className='Login-Header'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
        </header>
        <div className='Signin-Box'>
        <form onSubmit={this.submit}>
          <h2><br/>Sign-In</h2>
          <p>
            <span class='Seperate-SI-UN'></span>
            Username
          </p>
          <input 
            type="text" 
            id="username" 
            name="username" 
            placeholder='username' 
            size="55"
            value={this.state.username}
            onChange={this.handleChange}
          />

          <p>Password</p>
          <input 
            type="text" 
            id="password" 
            name="password" 
            placeholder='password' 
            size="55"
            value={this.state.password}
            onChange={this.handleChange}
          />
        
          <p class='Reset-UN-PASS'>Having trouble signing in?</p>
          <button type="submit" class='LoginButton'>Log-in</button>
        </form>
          <a class='Reset-UN-PASS' href='ResetPass'>Click here to reset your Password</a>
          <a class='Reset-UN-PASS' href='DiscoverUN'><br/><br/>Click here to discover your Username</a> 
        </div>
      </div>
      </body>
      
    );
  }

}

export default Login;
