import React, {Component} from 'react';
import './UpdateAccount.css'

class AdminUpdateAccount extends Component{
  state = {
    loading: true,
    isAdmin: false
  }
  
  componentDidMount() {
    this.isLoggedIn();
  }

  isLoggedIn = () => {
    fetch('/isAdmin')
    .then(response => response.json())
    .then(response => this.setState({loading: false, isAdmin: response.is_admin}))
    .catch(err => console.error(err))
  }

  render() {
    if (this.state.isAdmin){
      return (
        <body>
          <div className='UpdateAccount'>
            <header className='UpdateAcc-Header'>
                <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
              <nav className='Nav'>
                <button href='AdminHome' className='NavButtons'>Home</button>
                <button href='PointHistory' className='NavButtons'>Points</button>
                <button href='CatalogPurchase' className='NavButtons'>Catalog</button>
                <button href='UpdateAccount' className='NavButtons'>Settings</button>
              </nav>
              <ul className='UpdateAccLout-UpAcc'>
                <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
                <li><a href='UpdateAccount'>Username</a></li>
                <li><a href='Home'>Logout</a></li>
              </ul>
            </header>
            <div className='UpdateAcc-Body'>
              <label className='inputs' for='userFirstName'><br/>Update First Name<br/></label>
                <input type='text' id='userFirstName' name='userFirstName' placeholder='John' size='45'></input>
              <label className='inputs' for='userLastName'><br/>Update Last Name<br/></label>
                <input type='text' id='userLastName' name='userLastName' placeholder='Doe' size='45'></input>
              <label className='inputs' for='userBirthday'><br/>Update Birthday<br/></label>
                <input type='date' id='userBirthday' name='userBirthday'></input>
              <label className='inputs' for='userName'><br/>Update Username<br/></label>
                <input type='text' id='userName' name='userName' placeholder='jondoe' size='45'></input>  
              <label className='inputs' for='userEmail'><br/>Update Email<br/></label>
                  <input type='email' id='userEmail' name='userEmail' placeholder='johndoe@email.com' size='45'></input>
              <label className='inputs' for='userPassword'><br/>Update Password<br/></label>
                  <input type='password' id='userPassword' name='userPassword' placeholder='password' size='45'></input> 
              <label className='inputs' for='userPhoneNum'><br/>Update Phone Number<br/></label>
                <input type='tel' id='userPhoneNum' name='userPhoneNum' pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" placeholder='888 888 8888' size='45'></input>
              
              <label className='inputs' for='userProfilePicture'><br/>Update Profile Picture<br/></label>
                <input type="file" id='userProfilePicture' name='userProfilePicture' accept="image/*"></input> 
              <button className='saveChanges'>Save Changes</button>

            </div>
            <footer className='UpdateAcc-Footer'>
              <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="200" height="70"></img>
            </footer>
          </div>
        </body>
      );
    }else{
      return (
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
  }
}

export default AdminUpdateAccount;