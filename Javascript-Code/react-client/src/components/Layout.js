import React, {Component} from 'react';
import SponsorHeader from './SponsorHeader'
import SponsorFooter from './SponsorFooter'
import './Layout.css'
import DriverHeader from './DriverHeader';
import DriverFooter from './DriverFooter';
import AdminHeader from './AdminHeader';
import AdminFooter from './AdminFooter';

class Layout extends Component {
    render() {
        return (
            <div className='Layout-Container'> 
                {this.props.userType === 0 && <DriverHeader />}
                {this.props.userType === 1 && <SponsorHeader />}
                {this.props.userType === 2 && <AdminHeader />}
                <div className='Layout-Content'>
                    {this.props.children}
                </div>
                {this.props.userType === 0 && <DriverFooter />}
                {this.props.userType === 1 && <SponsorFooter />}
                {this.props.userType === 2 && <AdminFooter />}
            </div>
        )
    }
}

export default Layout;