import React, {Component} from 'react';
import './DriverHome.css'

class DriverHome extends Component{
  render() {
    return (
      <div className='DriverHomePage'>
        <header className='Driver-Header'>
          <img src="SponsorLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
          <nav className='Nav'>
            <button href='DriverHome' className='NavButtons'>Home</button>
            <button href='PointHistory' className='NavButtons'>Points</button>
            <button href='CatalogPurchase' className='NavButtons'>Catalog</button>
            <button href='UpdateAccount' className='NavButtons'>Settings</button>
          </nav>
          <ul className='DriverLout-UpAcc'>
            <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
            <li><a href='UpdateAccount'>Username</a></li>
            <li><a href='Home'>Logout</a></li>
          </ul>
        </header>
        <body>
          
          <select className='SortByDrop' id='SortByDrop'>
            <option disabled selected hidden>Sort By</option>
            <option>All Time</option>
            <option>Last 24 Hours</option>
            <option>Last 7 Days</option>
            <option>Last 30 Days</option>
          </select>
        </body>

        <footer className='Driver-Footer'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="200" height="70"></img>
        </footer>
      </div>
    );
  }
}

export default DriverHome;
