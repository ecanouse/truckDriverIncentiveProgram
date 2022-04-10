import React, {Component} from 'react';
import DriverOrganizations from '../components/DriverOrganizations';
import Layout from '../components/Layout';
import './DriverHome.css'


class DriverHome extends Component{
  state = {
    loading: true,
    isDriver: false
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
      }
    })
    .catch(err => console.error(err))
  }
  
    render() {
      if (this.state.isDriver){
        return (
          <Layout userType={0}>
              <div className='DriverHome-Body'>
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
