import React, {Component} from 'react';
import Layout from '../components/Layout';
import AdminUpdateAccount from '../components/AdminUpdateAccount';
import './SponsorHome.css'

class SponsorHome extends Component{
  state = {
    loading: true,
    isSponsor: false,
    drivers: [],
    updating: -1
  }
  
  componentDidMount() {
    this.isSponsor();
  }

  getDrivers = () => {
    fetch('/getSponsorDrivers')
    .then(response => response.json())
    .then(response => this.setState({drivers: response.drivers}))
    .catch(err => console.error(err))
  }

  isSponsor = () => {
    fetch('/isSponsor')
    .then(response => response.json())
    .then(response => {
      this.setState({loading: false, isSponsor: response.is_sponsor});
      this.getDrivers();
    })
    .catch(err => console.error(err))
  }

  updateAccount = (user) => {
    this.setState({
      updating: user.uID
    })
  }

  exitUpdateInfo = () => {
    this.setState({
      updating: -1
    })
    this.getDrivers()
    this.getSponsors();
    this.getAdmin();
  }

  render() {
    if (this.state.isSponsor){
      return (
        <Layout userType={1} isUser={this.isSponsor}>
          {/* <div className='SponsorHomePage'> */}
            {/* <body> */}
              
              {/* <select className='SortByDrop' id='SortByDrop'>
                <option disabled selected hidden>Sort By</option>
                <option>All Time</option>
                <option>Last 24 Hours</option>
                <option>Last 7 Days</option>
                <option>Last 30 Days</option>
              </select> */}

              <div className='Sponsor-show-users'>
                <h1 className='driverlist-heading'>All Drivers:</h1>
                {this.state.drivers.map((user, i) => {return(
                  <div className='Sponsor-individual-user' key={i}>
                      <img className='profile-pic' src='DefaultProfPic.png' alt='Default Profile Picure'/>
                      <p className='user-info'>{user.fname} {user.lname}</p>
                      <p className='user-info'>{user.status ? 'Active' : 'Suspended'}</p>
                      {this.state.userType === 1 && <p className='user-info'>{user.orgName}</p>}
                      <button  className='user-info' onClick={() => this.updateAccount(user)}>Update Account</button>
                  </div>
                )})}
            </div>
            
            {this.state.updating !== -1 && <AdminUpdateAccount uID={this.state.updating} exitUpdateInfo={this.exitUpdateInfo} />}
            {/* </body> */}
          {/* </div> */}
        </Layout>
      );
    }else{
      return (
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
  }
}

export default SponsorHome;
