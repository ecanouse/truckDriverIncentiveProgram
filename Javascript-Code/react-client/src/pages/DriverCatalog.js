import React, {Component} from 'react';
import CatalogItem from '../components/CatalogItem';
import Layout from '../components/Layout';
import './DriverCatalog.css'

class DriverCatalog extends Component{
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
        <Layout userType={0}>
          <CatalogItem listingId={1156488806}/>
        </Layout>
      );
    }else{
      return (
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
  }
}

export default DriverCatalog;