import React, {Component} from 'react';
import './PointHistory.css'

class PointHistory extends Component{
  render() {
    return (
      <div className='PointHistoryPage'>
        <header className='PointHistory-Header'>
          <img src="SponsorLogo.png" alt="Sponsor Logo" width="250" height="100"></img>
          <nav className='Nav'>
            <button href='DriverHome' className='NavButtons'>Home</button>
            <button href='PointHistory' className='NavButtons'>Points</button>
            <button href='CatalogPurchase' className='NavButtons'>Catalog</button>
            <button href='UpdateAccount' className='NavButtons'>Settings</button>
          </nav>
          <ul className='PointHistoryLout-UpAcc'>
            <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
            <li><a href='UpdateAccount'>Username</a></li>
            <li><a href='Home'>Logout</a></li>
          </ul>
        </header>
        
        <body>
          
        </body>

        <footer className='PointHistory-Footer'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="200" height="70"></img>
        </footer>
      </div>
    );
  }
}

export default PointHistory;
