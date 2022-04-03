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
        <Layout userType={0} isUser={this.isDriver}>
            <select className='SortByDrop' id='SortByDrop' defaultValue={"sort"}>
              <option disabled hidden value={"sort"}>Sort By</option>
              <option>All Time</option>
              <option>Last 24 Hours</option>
              <option>Last 7 Days</option>
              <option>Last 30 Days</option>
            </select>
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
