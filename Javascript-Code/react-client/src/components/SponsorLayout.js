import React, {Component} from 'react';
import SponsorHeader from './SponsorHeader'
import SponsorFooter from './SponsorFooter'
import './SponsorLayout.css'

class SponsorLayout extends Component {
    render() {
        return (
            <div className='Layout-Container'> 
                <SponsorHeader />
                <div className='Layout-Content'>
                    {this.props.children}
                </div>
                <SponsorFooter />
            </div>
        )
    }
}

export default SponsorLayout;