import React, {Component} from 'react';
import AdminUpdateAccount from '../components/AdminUpdateAccount';
import AdminUpdateOrgs from '../components/AdminUpdateOrgs';
import AdminAddUser from '../components/AdminAddUser';
import './AdminHome.css'
import Layout from '../components/Layout';
class AdminHome extends Component{
  state = {
    loading: true,
    isAdmin: false,
    drivers: [],
    sponsors: [],
    admin: [],
    userType: 0,
    updating: -1,
    updatingOrgs: -1,
    adding: false
  }
  
  componentDidMount() {
    this.isAdmin();
  }

  getDrivers = () => {
    fetch('/getAllDrivers')
    .then(response => response.json())
    .then(response => this.setState({drivers: response.drivers}))
    .catch(err => console.error(err))
  }

  getSponsors = () => {
    fetch('/getAllSponsors')
    .then(response => response.json())
    .then(response => this.setState({sponsors: response.sponsors}))
    .catch(err => console.error(err))
  }

  getAdmin = () => {
    fetch('/getAllAdmin')
    .then(response => response.json())
    .then(response => this.setState({admin: response.admin}))
    .catch(err => console.error(err))
  }

  isAdmin = () => {
    fetch('/isAdmin')
    .then(response => response.json())
    .then(response => {
      this.setState({loading: false, isAdmin: response.is_admin})
      if(response.is_admin){
        this.getDrivers()
        this.getSponsors()
        this.getAdmin()
      }
    })
    .catch(err => console.error(err))
  }

  toggleActive = (user) => {
    var payload = {
      active: !user.status,
      uID: user.uID
    };
    fetch('/toggle-active', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(payload)
    })
    .then(response => {
      if(response.status === 200){
        this.getDrivers()
        this.getSponsors()
        this.getAdmin()
      }
    })
    .catch(err => console.error(err))
  }

  updateAccount = (user) => {
    this.setState({
      updating: user.uID
    })
  }

  updateOrgs = (user) => {
    this.setState({
      updatingOrgs: user.uID
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

  exitUpdateOrgs = () => {
    this.setState({
      updatingOrgs: -1
    })
  }

  exitAddUser = () => {
    this.setState({
      adding: false
    })
    this.getDrivers()
    this.getSponsors();
    this.getAdmin();
  }

  render() {
    const users = this.state.userType === 2 ? this.state.admin : this.state.userType === 1 ? this.state.sponsors : this.state.drivers
    if (this.state.isAdmin){
      return (
        <Layout userType={2} isUser={this.isAdmin}>
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
                <label for="drivers">Drivers</label>
                <input type="radio" id="sponsors" name="usertype" value="sponsors" checked={this.state.userType===1} onChange={() => this.setState({userType: 1})}/>
                <label for="sponsors">Sponsors</label>
                <input type="radio" id="admin" name="usertype" value="admin" checked={this.state.userType===2} onChange={() => this.setState({userType: 2})}/>
                <label for="admin">Admin</label>
              </div>
            </div>
            <div className='show-users'>
              {this.state.userType === 0 && <button onClick={() => this.setState({adding: true})}>Add New Driver</button>}
              {this.state.userType === 1 && <button onClick={() => this.setState({adding: true})}>Add New Sponsor</button>}
              {this.state.userType === 2 && <button onClick={() => this.setState({adding: true})}>Add New Admin</button>}
              {/* <div className='users-heading'>
                  <div className='blank'></div>
                  <p className='user-info'>Name</p>
              </div> */}
              {users.map((user, i) => {return(
                <div className='individual-user' key={i}>
                    <img className='profile-pic' src='DefaultProfPic.png' alt='Default Profile Picure'/>
                    <p className='user-info'>{user.fname} {user.lname}</p>
                    <p className='user-info'>{user.status ? 'Active' : 'Suspended'}</p>
                    {this.state.userType === 1 && <p className='user-info'>{user.orgName}</p>}
                    <button  className='user-info' onClick={() => this.updateAccount(user)}>Update Account</button>
                    <button className='user-info' onClick={() => this.toggleActive(user)}>Change Status</button>
                    {this.state.userType === 0 && <button className='user-info' onClick={() => this.updateOrgs(user)}>View Organizations</button>}
                </div>
              )})}
            </div>
            
            {this.state.updating !== -1 && <AdminUpdateAccount uID={this.state.updating} exitUpdateInfo={this.exitUpdateInfo} />}
            {this.state.updatingOrgs !== -1 && <AdminUpdateOrgs uID={this.state.updatingOrgs} exitUpdateOrgs={this.exitUpdateOrgs} />}
            {this.state.adding && <AdminAddUser userType={this.state.userType} exitAddUser={this.exitAddUser} />}
        </Layout>
      );
    }else{
      return(
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
    }
}

export default AdminHome;
