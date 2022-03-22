import React, {Component} from 'react';
import Layout from '../components/Layout';
import './SponsorCatalog.css';

class SponsorCatalog extends Component{
  state = {
    loading: true,
    isSponsor: false
  }
  
  componentDidMount() {
    this.isSponsor();
  }

  isSponsor = () => {
    fetch('/isSponsor')
    .then(response => response.json())
    .then(response => this.setState({loading: false, isSponsor: response.is_sponsor}))
    .catch(err => console.error(err))
  }

  render() {
    if (this.state.isSponsor){
      return (
        <Layout userType={1}>
            <div className='EditButtons'>
              <button className='EditButtonsStyle'>Add Product</button>
              <button className='EditButtonsStyle'>Remove Product</button>
              <button className='EditButtonsStyle'>View Product Amounts</button>
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

export default SponsorCatalog;
