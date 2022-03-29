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
        <div className='DriverHomePage'>
          <header className='Driver-Header'>
            <link rel='icon' href='websiteicon.png'/>
            <img src="SponsorLogo.png" alt="Sponsor Logo" width="250" height="100"></img>
            <nav className='Nav'>
              <a href='DriverHome'>
                <button href='DriverHome' className='NavButtons' >Home</button>
              </a>
              <a href='PointHistory'>
                <button className='NavButtons'>Points</button>
              </a>
              <a href='CatalogPurchase'>
                <button className='NavButtons'>Catalog</button>
              </a>
              <a href='UpdateAccount'>
                <button className='NavButtons'>Settings</button>
              </a>
              </nav>

              <nav className='Nav'>
              <select>
              <option>select</option>
              <option href='DriverHome'>Home</option>
              <option href='PointHistory'>Points</option>
              <option href='CatalogPurchase'>Catalog</option>
              <option href='UpdateAccount'>Settings</option>
            </select>  
              </nav>
              
        
  

            <ul className='DriverLout-UpAcc'>
              <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
              <li><a href='UpdateAccount'>Username</a></li>
              <li><a href='Home'>Logout</a></li>
            </ul>
          </header>
          
            
            <select className='SortByDrop' id='SortByDrop'>
              <option disabled selected hidden>Sort By</option>
              <option>All Time</option>
              <option>Last 24 Hours</option>
              <option>Last 7 Days</option>
              <option>Last 30 Days</option>
            </select>
        </div>
        
        
      );
    }else{
      return (
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
  }
}

export default DriverHome;
