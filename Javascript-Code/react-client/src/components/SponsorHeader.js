import React, {Component} from 'react';
import './SponsorHeader.css'

class SponsorHeader extends Component {
    render() {
        return (
            <div className='Sponsor-Header'>
                <img src="SponsorLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
                <nav className='Nav'>
                    <button href='SponsorHome' className='NavButtons'>Home</button>
                    <button href='PointHistory' className='NavButtons'>Points</button>
                    <button href='CatalogPurchase' className='NavButtons'>Catalog</button>
                    <button href='UpdateAccount' className='NavButtons'>Settings</button>
                </nav>
                <ul className='Sponsor-Header-UpAcc'>
                    <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
                    <li><a href='UpdateAccount'>Username</a></li>
                    <li><a href='Home'>Logout</a></li>
                </ul>
          </div>
        )
    }
}

export default SponsorHeader;