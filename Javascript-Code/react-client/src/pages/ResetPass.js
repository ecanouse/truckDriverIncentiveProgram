import React, {Component} from 'react';

class ResetPass extends Component{

  state = {
    email: '',
    code: '',
    newPass: '',
    newPassConf: '',
    redirect: false,
    msg: "",
    passMsg: ""
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

  checkComplexity = (event) => {
    const target = event.target;
    const value = target.value;
    let strongPassword = new RegExp('((?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{8,20}))');
    if(strongPassword.test(value)){
      this.setState({passMsg: ""})
      document.getElementById("btn").disabled = false;
    }else{
      this.setState({passMsg: "Password must be 8-20 characters long and contain a lowercase letter, a capital letter, a number, and a special character."})
    }
  }


  submit = (event) => {
    event.preventDefault(); //prevent's browser from reloading
    console.log("Submitting to server");
    //stored data
    var payload = {
      email: this.state.email
    };

    //sending data to node server
    fetch('/resetemail-attempt', {
      method: 'POST', //post request
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload) //put into json form
    })
    .then(response => {
      if( response.status === 200 ) {
        response.json().then( data => {
          if( data.success ) {
            document.getElementById('login_displaybox').style.color = "black";
            this.setState({msg: "Email has been sent with reset instructions"});
            //this.setState({redirect: true});

          }
          else {
            //display fail message
            console.log("Email not found.")
            this.setState({msg: "Email not found."})
          }
        })
      }
    })
    .catch((error) => {
      console.error('Error', error);
    });

  };


  submitPass = (event) => {
    event.preventDefault(); //prevent's browser from reloading
    console.log("Submitting to server");
    //stored data
    var payload = {
      code: this.state.code,
      newPass: this.state.newPass,
      newPassConf: this.state.newPassConf
    };

    //sending data to node server
    fetch('/resetpass-attempt', {
      method: 'POST', //post request
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload) //put into json form
    })
    .then(response => {
      if( response.status === 200 ) {
        response.json().then( data => {
          if( data.success ) {
            document.getElementById('login_displaybox').style.color = "black";
            this.setState({msg: "Email has been sent with reset instructions"});
            //this.setState({redirect: true});

          }
          else {
            //display fail message
            console.log("Code does not match.")
            this.setState({msg: "Code does not match or is expired."})
          }
        })
      }
    })
    .catch((error) => {
      console.error('Error', error);
    });

  };






  render() {
    return (
      <body>
        <div className='ResetPassPage'>
        <form onSubmit={this.submit}>
          <h2><br/>Input Email</h2>
          <p className='login_displaybox' id='login_displaybox' >{this.state.msg}</p>
          <p>
            Email
          </p>
          <input 
            type="email" 
            id="email" 
            name="email" 
            placeholder='email' 
            size="55"
            value={this.state.email}
            onChange={this.handleChange}
          />
        
          <button type="submit" class='LoginButton'>Send Reset Email</button>

        </form>


        <form onSubmit={this.submitPass}>
          <h2><br/>Input Code</h2>
          <p>
            Code
          </p>
          <input 
            type="text" 
            id="code" 
            name="code" 
            placeholder='code' 
            size="55"
            value={this.state.code}
            onChange={this.handleChange}
          />
          <p>New Password</p>
          <input 
            type="password" 
            id="newPass" 
            name="newPass" 
            placeholder='password' 
            size="55"
            value={this.state.newPass}
            onChange={this.handleChange}
            onInput={this.checkComplexity}
          />
          <p className='login_displaybox' id='login_displaybox' >{this.state.passMsg}</p>

          <p>Confirm Password</p>
          <input 
            type="password" 
            id="newPassConf" 
            name="newPassConf" 
            placeholder='confirm password' 
            size="55"
            value={this.state.newPassConf}
            onChange={this.handleChange}
          />  
        
          <button type="submit" class='LoginButton' id='btn' disabled>Reset Password</button>

        </form>
      </div>
      </body>
      
    );
  }
}

export default ResetPass;