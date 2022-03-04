import React, {Component} from 'react';
import SponsorHeader from './SponsorHeader'
import SponsorFooter from './SponsorFooter'
import './SponsorLayout.css'

class SponsorLayout extends Component {
    render() {
        return (
            <div className='Layout-Container'> 
                <div className='Layout-Content'>
                    <SponsorHeader />
                    {this.props.children}
                </div>
                <SponsorFooter />
            </div>
        )
    }
}

export default SponsorLayout;