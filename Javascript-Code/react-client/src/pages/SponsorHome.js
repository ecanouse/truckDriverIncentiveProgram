import React, {Component} from 'react';
import SponsorLayout from '../components/SponsorLayout';
import './SponsorHome.css'

class SponsorHome extends Component{
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
        <SponsorLayout>
          <div className='SponsorHomePage'>
            <body>
              
              <select className='SortByDrop' id='SortByDrop'>
                <option disabled selected hidden>Sort By</option>
                <option>All Time</option>
                <option>Last 24 Hours</option>
                <option>Last 7 Days</option>
                <option>Last 30 Days</option>
              </select>
            </body>
          </div>
        </SponsorLayout>
      );
    }else{
      return (
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
  }
}

export default SponsorHome;
