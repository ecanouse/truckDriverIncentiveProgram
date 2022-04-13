import React, {Component} from 'react';
import { Navigate } from 'react-router-dom';
import DriverOrganizations from '../components/DriverOrganizations';
import Layout from '../components/Layout';
import './DriverHome.css'


class DriverHome extends Component{
  state = {
    loading: true,
    isDriver: false,
    isDriverView: false,
    adminView: false
  }
  
  componentDidMount() {
    this.isDriver();
  }

  isDriver = () => {
    fetch('/isDriver')
    .then(response => response.json())
    .then(response => {
      this.setState({loading: false, isDriver: response.is_driver})
      if(response.is_driver){
        this.getIsDriverView()
      }
    })
    .catch(err => console.error(err))
  }

  getIsDriverView = () => {
    fetch('/isdriverview')
    .then(response => response.json())
    .then(response => {
      this.setState({
        isDriverView: response.is_driverview
      })
      console.log("VIEW " + response.is_driverview)
    })
    .catch(err => console.error(err))
  }
  
  adminView = () => {
    fetch('/leavedriverview')
    .catch(err => console.error(err))
    .then(response => {
      if( response.status === 200 ) {
          this.setState({adminView: true})
      }
    })
  }
  
    render() {
      if (this.state.isDriver){
        return (
          <Layout userType={0}>
              <div className='DriverHome-Body'>
                {this.state.isDriverView && <button className='AdminHome-Button' onClick={() => this.adminView()}>Back to Admin View</button>}
                {this.state.adminView && <Navigate to="/adminhome"/>}
                <DriverOrganizations></DriverOrganizations>
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

export default DriverHome;
