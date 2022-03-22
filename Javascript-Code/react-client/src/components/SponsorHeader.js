import React, {Component} from 'react';
import './SponsorHeader.css'

class SponsorHeader extends Component {
    render() {
        return (
            <div className='Sponsor-Header'>
                <img src="SponsorLogo.png" alt="The Mad Lads Team Logo" width="250" height="100"></img>
                <nav className='Nav'>
                    <a href='SponsorHome'>
                        <button href='DriverHome' className='NavButtons' >Home</button>
                    </a>
                    <a href='PointAssignment'>
                        <button className='NavButtons'>Points</button>
                    </a>
                    <a href='SponsorCatalog'>
                        <button className='NavButtons'>Catalog</button>
                    </a>
                    <a href='UpdateAccount'>
                        <button className='NavButtons'>Settings</button>
                    </a>
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