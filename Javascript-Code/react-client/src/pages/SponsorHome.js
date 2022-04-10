import React, {Component} from 'react';
import Layout from '../components/Layout';
import AdminUpdateAccount from '../components/AdminUpdateAccount';
import AdminAddUser from '../components/AdminAddUser';
import './SponsorHome.css'
import SponsorApplications from '../components/SponsorApplications';

class SponsorHome extends Component{
  state = {
    loading: true,
    isSponsor: false,
    drivers: [],
    sponsors: [],
    updating: -1,
    userType: 0,
    org: [],
    viewApps: false
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

  getSponsors = () => {
    fetch('/getOrganizations?' + new URLSearchParams({
      uID: '-1',
    }))
    .then(response => response.json())
    .then(response => {
      this.setState({
        org: response.orgs[0].sponsorID
      })
      fetch('/getOrgSponsors?' + new URLSearchParams({
        org: response.orgs[0].sponsorID,
      }))
      .then(response => response.json())
      .then(response => {
        this.setState({
          sponsors: response.sponsors
        })
      })
      .catch(err => console.error(err))
    })
    .catch(err => console.error(err))
  }


  isSponsor = () => {
    fetch('/isSponsor')
    .then(response => response.json())
    .then(response => {
      this.setState({loading: false, isSponsor: response.is_sponsor});
      if(response.is_sponsor){
        this.getDrivers();
        this.getSponsors();
      }
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
  }

  exitAddUser = () => {
    this.setState({
      adding: false
    })
    this.getDrivers()
    this.getSponsors();
  }

  exitApplications = () => {
    this.setState({
      viewApps: false
    })
    this.getDrivers()
    this.getSponsors();
  }

  render() {
    if (this.state.isSponsor){
      const users = this.state.userType === 1 ? this.state.sponsors : this.state.drivers
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

              <div className='userbuttons'>
                <p>View Users:</p>

                <div>
                  <input type="radio" id="drivers" name="usertype" value="drivers" checked={this.state.userType===0} onChange={() => this.setState({userType: 0})}/>
                  <label htmlFor="drivers">Drivers</label>
                  <input type="radio" id="sponsors" name="usertype" value="sponsors" checked={this.state.userType===1} onChange={() => this.setState({userType: 1})}/>
                  <label htmlFor="sponsors">Sponsors</label>
                </div>
              </div>
              <div className='Sponsor-show-users'>
              {this.state.userType === 0 && <button onClick={() => this.setState({viewApps: true})}>View Applications</button>}
              {this.state.userType === 1 && <button onClick={() => this.setState({adding: true})}>Add New Sponsor</button>}
                {users.map((user, i) => {return(
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
            {this.state.adding && <AdminAddUser isSponsor={true} userType={this.state.userType} exitAddUser={this.exitAddUser} org={this.state.org}/>}
            {this.state.viewApps && <SponsorApplications org={this.state.org} exitApplications={this.exitApplications}></SponsorApplications>}
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
