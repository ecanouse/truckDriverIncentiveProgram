import React, {Component} from 'react';
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
    .then(response => this.setState({loading: false, isDriver: response.is_driver}))
    .catch(err => console.error(err))
  }

  render() {
    if (this.state.isDriver){
      return (
        <Layout usertype={0}>
        <div className='DriverHomePage'>
            <select className='SortByDrop' id='SortByDrop'>
              <option disabled selected hidden>Sort By</option>
              <option>All Time</option>
              <option>Last 24 Hours</option>
              <option>Last 7 Days</option>
              <option>Last 30 Days</option>
            </select>
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
