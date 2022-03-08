import React, {Component} from 'react';
import './AdminHome.css'

class AdminHome extends Component{
  render() {
    return (
      <div className='AdminHomePage'>
        <header className='Admin-Header'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
          <nav className='Nav'>
            <a href='AdminHome'>
              <button  className='NavButtons'>Home</button>
            </a>
            <a href='PointHistory'>
              <button className='NavButtons'>Points</button>
            </a>
            <a  href='CatalogPurchase'>
              <button className='NavButtons'>Catalog</button>
            </a>
            <a href='UpdateAccount'>
            <button className='NavButtons'>Settings</button>
            </a>
              
          </nav>
          <ul className='AdminLout-UpAcc'>
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

        <footer className='Admin-Footer'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="200" height="70"></img>
        </footer>
      </div>
    );
  }
}

export default AdminHome;
