import React, {Component} from 'react';
import './SponsorCatalog.css';

class SponsorCatalog extends Component{
  render() {
    return (
      <div className='SponsorCatPage'>
        <header className='SponsorCat-Header'>
          <img src="SponsorLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
          <nav className='Nav'>
            <button href='SponsorHome' className='NavButtons'>Home</button>
            <button href='PointHistory' className='NavButtons'>Points</button>
            <button href='CatalogPurchase' className='NavButtons'>Catalog</button>
            <button href='UpdateAccount' className='NavButtons'>Settings</button>
          </nav>
          <ul className='SponsorCatLout-UpAcc'>
            <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
            <li><a href='UpdateAccount'>Username</a></li>
            <li><a href='Home'>Logout</a></li>
          </ul>
        </header>
        <body>
          <div className='EditButtons'>
            <button className='EditButtonsStyle'>Add Product</button>
            <button className='EditButtonsStyle'>Remove Product</button>
            <button className='EditButtonsStyle'>View Product Amounts</button>
          </div>
        </body>
        
        <footer className='SponsorCat-Footer'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="200" height="70"></img>
          <button className='DriverView'>Driver View</button>
        </footer>
      </div>
    );
  }
}

export default SponsorCatalog;
