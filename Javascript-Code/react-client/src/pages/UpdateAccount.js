import React, {Component} from 'react';
import Layout from '../components/Layout';
import './UpdateAccount.css'

class UpdateAccount extends Component{
  state = {
    loading: true,
    isLoggedIn: false,
    lname: '',
    fname: '',
    username: '',
    email: '',
    phone: '',
    userType: -1,
    pass: '',
    newPass: '',
    confPass: '',
    feedback: '',
    match: false,
    comp: false
  }
  
  componentDidMount() {
    this.isLoggedIn();
  }

  getInfo = () => {
    fetch('/get-acc-info?' + new URLSearchParams({
      uID: -1,
    }))
    .then(response => response.json())
    .then(response => {
      console.log(response)
      this.setState({
        lname: response.user.lname,
        fname: response.user.fname,
        username: response.user.username,
        email: response.user.email,
        phone: response.user.phone
      })
    })
    .catch(err => console.error(err))
  }

  isLoggedIn = () => {
    fetch('/isLoggedIn')
    .then(response => response.json())
    .then(response => {
      this.setState({loading: false, isLoggedIn: response.is_loggedin})
      if(response.is_loggedin){
        this.getInfo()
        this.getUserType()
      }
    })
    .catch(err => console.error(err))
  }

  getUserType = () => {
    fetch('/currentUserType')
    .then(response => response.json())
    .then(response => {
      this.setState({userType: response.userType})
    })
    .catch(err => console.error(err))
  }

  handleChange = (event) => {
    const target = event.target;
    const name = target.name
    const value = target.value
    
    this.setState({
      [name]: value
    });
    this.setState({feedback: ""});
  };

  handlePasswordChange = (event) => {
    const target = event.target;
    const name = target.name
    const value = target.value
    
    this.setState({
      [name]: value
    },
    this.checkComplexity,
    this.checkMatch,
    this.setBtn);
    this.setState({feedback: ""});
    

    //this.checkComplexity(event);
  };

  /*handlePasswordChange = (event) => {
    console.log("Arrived in handlePasswordChange");
    this.handleChange(event);
    this.checkComplexity(event);
  };*/

  checkComplexity = () => {
    const value = this.state.newPass;
    let strongPassword = new RegExp('((?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{8,20}))');
    if(strongPassword.test(value)){
      this.setState({passMsg: "", comp: true})

      //document.getElementById("btn").disabled = false;
    }else{
      if(value === ''){
        this.setState({passMsg: ""})
      }else{
        this.setState({passMsg: "Password must be 8-20 characters long and contain a lowercase letter, a capital letter, a number, and a special character."})
        this.setState({comp: false});

        //document.getElementById("btn").disabled = true;
      }
    }
  }

  checkMatch = () => {
    const value = this.state.confPass;
    if(value === this.state.newPass && value !== ""){
      //document.getElementById("btn").disabled = false;
      this.setState({match: true});
      this.setState({passMsg: ""});
    }else{
      this.setState({passMsg: "Passwords must match."});
      //document.getElementById("btn").disabled = true;
      this.setState({match: false});
    }

  }

  setBtn = () => {
    if(this.state.comp && this.state.match){
      document.getElementById("btn").disabled = false;
    }else if(this.state.newPass === ""){
      document.getElementById("btn").disabled = false;
    }else{
      document.getElementById("btn").disabled = true;
    }
  }

  submit = (event) => {
    event.preventDefault();
    var payload = {
      uID: '-1',
      lname: this.state.lname.split(" ")[0],
      fname: this.state.fname.split(" ")[0],
      username: this.state.username.split(" ")[0],
      email: this.state.email.split(" ")[0],
      phone: this.state.phone.split(" ")[0],
      pass: this.state.pass.split(" ")[0],
      newPass: this.state.newPass.split(" ")[0],
      confPass: this.state.confPass.split(" ")[0]
    };
    fetch('/update-account', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    })
    .then(response => {
      response.json().then( data => {
        document.getElementById('login_displaybox').style.color = "red";
        this.setState({feedback: data.msg})
      })
    })
    .catch((error) => {
      console.error('Error', error);
    });
  }

  render() {
    console.log(this.state.feedback)
    if (this.state.isLoggedIn){
      return (
          <Layout userType={this.state.userType}>
            <div className='UpdateAccount-Page'>
            <div className='UpdateAccount-Body'>
            <form id='info-form' onSubmit={this.submit}>
            {this.state.feedback==="Information Updated" ? <p className='UpdateAccount-Success' style={{color: "black"}}id='login_displaybox' >{this.state.feedback}</p> : <p className='UpdateAccount-Error' id='login_displaybox' >{this.state.feedback}</p>}
              <label className='inputs' htmlFor='fname'><br/>Update your First Name<br/></label>
                <input required type='text' id='fname' name='fname'  size='45' value={this.state.fname} onChange={this.handleChange}></input>
              <label className='inputs' htmlFor='lname'><br/>Update your Last Name<br/></label>
                <input required type='text' id='lname' name='lname'size='45' value={this.state.lname} onChange={this.handleChange}></input>
              {/* <label className='inputs' for='userBirthday'><br/>Update your Birthday<br/></label>
                <input type='date' id='userBirthday' name='userBirthday'></input> */}
              <label className='inputs' htmlFor='username'><br/>Username<br/></label>
                <input required type='text' id='username' name='username' size='45' value={this.state.username} onChange={this.handleChange}></input>  
              <label className='inputs' htmlFor='email'><br/>Update your Email<br/></label>
                  <input required type='email' id='email' name='email' size='45' value={this.state.email} onChange={this.handleChange}></input>
              <label className='inputs' htmlFor='newPass'><br/>Update your Password<br/></label>
              <p className='login_displaybox' id='login_displaybox' >{this.state.passMsg}</p>
                  <input id='newPass' name='newPass' placeholder='new password' size='45' value={this.state.newPass} onInput={this.handlePasswordChange} ></input> 
              <label className='inputs' htmlFor='confPass'><br/>Confirm Password<br/></label>
                  <input id='confPass' name='confPass' placeholder='confirm new password' size='45' value={this.state.confPass} onChange={this.handleChange}></input>
              <label className='inputs' htmlFor='pass'><br/>Current Password<br/></label>
                  <input type='password' id='pass' name='pass' placeholder='current password' size='45' value={this.state.pass} onChange={this.handleChange}></input>
              <label className='inputs' htmlFor='phone'><br/>Update for Phone Number<br/></label>
                <input required type='tel' id='phone' name='phone' maxLength={10} minLength={10} size='45' value={this.state.phone} onChange={this.handleChange}></input>
              
              <label className='inputs' htmlFor='userProfilePicture'><br/>Update your Profile Picture<br/></label>
                <input type="file" id='userProfilePicture' name='userProfilePicture' accept="image/*"></input> 
              <button type="submit" className='saveChanges' id='btn'>Save Changes</button>
              </form>
            </div>
            </div>
          </Layout>
      );
    }else{
      return (
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
  }
}

export default UpdateAccount;
