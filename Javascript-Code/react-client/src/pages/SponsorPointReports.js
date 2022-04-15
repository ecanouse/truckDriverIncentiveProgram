import React, {Component} from 'react';
import './AuditLogReports.css';
import AuditLogResults from '../components/AuditLogResults.js';
import Layout from '../components/Layout';
import ExportButton from '../components/ExportButton';
import ReportsTitle from '../components/ReportsTitle';
import ReportsFilter from '../components/ReportsFilter';
import DriverOnlyFilter from '../components/DriverOnlyFilter';

class SponsorPointReports extends Component {

    state = {
        data_fetched: false
    }

    callback = (data) => {

        console.log(data);

    }

    render() {

        if ( !this.state.data_fetched ) {
            <Layout userType={1}>
                <DriverOnlyFilter callback={this.callback} orgID={1}/>
            </Layout>
        }

        return (
            <Layout userType={1}>
                <p>unfinished</p>
            </Layout>
        );

    }

}

export default SponsorPointReports;