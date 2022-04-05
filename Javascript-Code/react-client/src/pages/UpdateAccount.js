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
    confPass: ''
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
  };

  checkComplexity = (event) => {
    const target = event.target;
    const value = target.value;
    let strongPassword = new RegExp('((?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{8,20}))');
    if(strongPassword.test(value)){
      this.setState({passMsg: ""})
      document.getElementById("btn").disabled = false;
    }else{
      if(value == ''){
        this.setState({passMsg: ""})
      }else{
        this.setState({passMsg: "Password must be 8-20 characters long and contain a lowercase letter, a capital letter, a number, and a special character."})
        document.getElementById("btn").disabled = true;
      }
    }
  }

  submit = (event) => {
    event.preventDefault();
    var payload = {
      uID: '-1',
      lname: this.state.lname,
      fname: this.state.fname,
      username: this.state.username,
      email: this.state.email,
      phone: this.state.phone,
      pass: this.state.pass,
      newPass: this.state.newPass,
      confPass: this.state.confPass
    };
    fetch('/update-account', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    })
    .then(response => {
      if( response.status === 200 ) {
      }
    })
    .catch((error) => {
      console.error('Error', error);
    });
  }

  render() {
    if (this.state.isLoggedIn){
      return (
          <Layout userType={this.state.userType}>
            <div className='UpdateAcc-Body'>
            <form id='info-form' onSubmit={this.submit}>
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
                  <input type='password' id='newPass' name='newPass' placeholder='new password' size='45' value={this.state.newPass} onChange={this.handleChange} onInput={this.checkComplexity}></input> 
              <label className='inputs' htmlFor='confPass'><br/>Confirm Password<br/></label>
                  <input type='password' id='confPass' name='confPass' placeholder='confirm new password' size='45' value={this.state.confPass} onChange={this.handleChange}></input>
              <label className='inputs' htmlFor='pass'><br/>Current Password<br/></label>
                  <input type='password' id='pass' name='pass' placeholder='current password' size='45' value={this.state.pass} onChange={this.handleChange}></input>
              <label className='inputs' htmlFor='phone'><br/>Update for Phone Number<br/></label>
                <input required type='tel' id='phone' name='phone' maxLength={10} minLength={10} size='45' value={this.state.phone} onChange={this.handleChange}></input>
              
              <label className='inputs' htmlFor='userProfilePicture'><br/>Update your Profile Picture<br/></label>
                <input type="file" id='userProfilePicture' name='userProfilePicture' accept="image/*"></input> 
              <button type="submit" className='saveChanges' id='btn'>Save Changes</button>
              </form>
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
