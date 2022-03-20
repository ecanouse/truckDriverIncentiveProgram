import React, {Component} from 'react';
import './AdminAddUser.css'

class AdminUpdateAccount extends Component{
    state = {
      loading: true,
      isLoggedIn: false,
      lname: '',
      fname: '',
      username: '',
      email: '',
      phone: '',
      allOrgs: []
    }
    
    componentDidMount() {
        // const { uid } = props.match.params.uid;
        // console.log(uid)
        this.isLoggedIn();
    }
  
    isLoggedIn = () => {
      fetch('/isLoggedIn')
      .then(response => response.json())
      .then(response => {
        this.setState({loading: false, isLoggedIn: response.is_loggedin})
        if(response.is_loggedin){
            this.getAllOrgs()
        }
      })
      .catch(err => console.error(err))
    }
  
    getAllOrgs = () => {
        fetch('/getAllOrganizations?' + new URLSearchParams({
          uID: this.props.uID,
        }))
        .then(response => response.json())
        .then(response => {
          console.log(response.orgs)
          this.setState({
            allOrgs: response.orgs
          })
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
  
    submit = (event) => {
      event.preventDefault();
      var payload = {
        userType: this.props.userType,
        lname: this.state.lname,
        fname: this.state.fname,
        username: this.state.username,
        email: this.state.email,
        phone: this.state.phone
      };
      fetch('/add-user', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload)
      })
      .then(response => {
        if( response.status === 200 ) {
            this.props.exitUpdateInfo()
        }
      })
      .catch((error) => {
        console.error('Error', error);
      });
    }
  
    render() {
        return (
              <div className='AddUser-Body'>
                <h1 className='AddUser-heading'>Add New User</h1>
                <form className='AddUser-FormContent' id='info-form' onSubmit={this.submit}>
                    <label className='AddUser-inputs' for='fname'><br/>First Name<br/></label>
                    <input required type='text' id='fname' name='fname'  size='45' value={this.state.fname} onChange={this.handleChange}></input>
                    <label className='AddUser-inputs' for='lname'><br/>Last Name<br/></label>
                    <input required type='text' id='lname' name='lname'size='45' value={this.state.lname} onChange={this.handleChange}></input>
                    <label className='AddUser-inputs' for='username'><br/>Username<br/></label>
                    <input required type='text' id='username' name='username' size='45' value={this.state.username} onChange={this.handleChange}></input>  
                    <label className='AddUser-inputs' for='email'><br/>Email<br/></label>
                        <input required type='email' id='email' name='email' size='45' value={this.state.email} onChange={this.handleChange}></input>
                    <label className='AddUser-inputs' for='phone'><br/>Phone Number<br/></label>
                    <input required type='tel' id='phone' name='phone' maxLength={10} minLength={10} size='45' value={this.state.phone} onChange={this.handleChange}></input>
                    {this.props.userType === 1 && <label className='AddUser-inputs' for='orgs-list'><br/>Organization<br/></label>}
                    {this.props.userType === 1 && <select id="orgs-list" value={this.state.driver === "" ? null : this.state.driver} onChange={e => this.setState({sponsorID: e.target.value})} required>
                        <option disabled selected value=""> -- select an organization -- </option>
                        {this.state.allOrgs.map((o,i) =>
                         <option value={o.sponsorID} key={i}>{o.orgName}</option>
                        )}
                    </select>}
                </form>
                <button className='AddUser-Exit' onClick={this.submit}>Add User</button>
                <button className='AddUser-Exit' onClick={this.props.exitAddUser}>Exit</button>
              </div> 
        );
    }
  }

export default AdminUpdateAccount
