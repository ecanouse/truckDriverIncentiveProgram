import React, {Component} from 'react';
import CatalogItem from '../components/CatalogItem';
import Layout from '../components/Layout';
import './DriverCatalog.css'

class DriverCatalog extends Component{
  state = {
    loading: true,
    isDriver: false,
    items: [1156488806, 869547756, 1031470365, 234064691]
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
          <div className='DriverCatalog-Items'>
            {this.state.items.map((item, i) => {return(
              <CatalogItem key={i} listingId={item}/>
            )})}
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

export default DriverCatalog;