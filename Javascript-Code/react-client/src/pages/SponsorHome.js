import React, {Component} from 'react';
import SponsorLayout from '../components/SponsorLayout';
import './SponsorHome.css'

class SponsorHome extends Component{
  render() {
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
  }
}

export default SponsorHome;
