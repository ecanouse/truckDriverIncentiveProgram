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
      this.setState({passMsg: "Password must be at least 8 characters long and contain a lowercase letter, a capital letter, a number, and a special character."})
    }
  }




  render() {
    return (
      <body>
        <form onSubmit={this.submitEmail}>
          <h2><br/>Input Email</h2>
          <p className='login_displaybox' id='login_displaybox' >{this.state.msg}</p>
          <p>
            <span class='Seperate-SI-UN'></span>
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
          <p className='login_displaybox' id='login_displaybox' >{this.state.passMsg}</p>
          <p>
            <span class='Seperate-SI-UN'></span>
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
            id="password" 
            name="password" 
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
            id="confirmpassword" 
            name="confirmpassword" 
            placeholder='confirm password' 
            size="55"
            value={this.state.newPassConf}
            onChange={this.handleChange}
          />  
        
          <button type="submit" class='LoginButton'>Reset Password</button>

        </form>

      </body>
      
    );
  }
}

export default ResetPass;