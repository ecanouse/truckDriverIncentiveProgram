import React, {Component} from 'react';
import './AdminHeader.css'

class AdminHeader extends Component {
    render() {
        return (
            <div className='Admin-Header'>
                <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
                <nav className='Nav'>
                <a href='AdminHome'>
                    <button  className='NavButtons'>Home</button>
                </a>
                {/* <a href='PointHistory'>
                    <button className='NavButtons'>Points</button>
                </a>
                <a  href='CatalogPurchase'>
                    <button className='NavButtons'>Catalog</button>
                </a> */}
                <a href='UpdateAccount'>
                <button className='NavButtons'>Settings</button>
                </a>
                    
                </nav>
                <ul className='AdminLout-UpAcc'>
                <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
                <li><a href='UpdateAccount'>Username</a></li>
                <li><a href='Home'>Logout</a></li>
                </ul>
          </div>
        )
    }
}

export default AdminHeader;