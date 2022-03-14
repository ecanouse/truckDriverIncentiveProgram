import React, {Component} from 'react';
import './SponsorFooter.css'

class SponsorFooter extends Component {
    render() {
        return (
            <div className='Sponsor-Footer'>
                <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="200" height="70"></img>
                <button className='DriverView'>Driver View</button>
            </div>
        )
    }
}

export default SponsorFooter;