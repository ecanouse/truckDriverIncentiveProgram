import React, {Component} from 'react';

class Signup extends Component{

  //state used to store username & password from inputs
  state = {
    username: '',
    password: '',
    confirmpassword: '',
    firstname: '',
    lastname: '',
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
      password: this.state.password,
      confirmpassword: this.state.confirmpassword,
      firstname: this.state.firstname,
      lastname: this.state.lastname
    };

        //sending data to node server
    //we may want to switch to using axios, a bit easier to digest than fetch commands
    console.log("sending payload of :");
    console.log(payload)
    console.log("end of payload");
    fetch('/signup-attempt', {
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

      <body>
      <div className='SignupPage'>
        <header className='Signup-Header'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
        </header>
        <div className='Signup-Box'>
        <form onSubmit={this.submit}>
          <h2><br/>Sign-Up</h2>
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

          <p>First Name</p>
          <input 
            type="text" 
            id="firstname" 
            name="firstname" 
            placeholder='first name' 
            size="55"
            value={this.state.firstname}
            onChange={this.handleChange}
          />

          <p>Last Name</p>
          <input 
            type="text" 
            id="lastname" 
            name="lastname" 
            placeholder='last name' 
            size="55"
            value={this.state.lastname}
            onChange={this.handleChange}
          />

          <p>Password</p>
          <input 
            type="password" 
            id="password" 
            name="password" 
            placeholder='password' 
            size="55"
            value={this.state.password}
            onChange={this.handleChange}
          />

          <p>Confirm Password</p>
          <input 
            type="password" 
            id="confirmpassword" 
            name="confirmpassword" 
            placeholder='confirm password' 
            size="55"
            value={this.state.confirmpassword}
            onChange={this.handleChange}
          />  
        
          <button type="submit" class='LoginButton'>Sign Up</button>
        </form>
        </div>
      </div>
      </body>
      
    );
  }

}

export default Signup;
