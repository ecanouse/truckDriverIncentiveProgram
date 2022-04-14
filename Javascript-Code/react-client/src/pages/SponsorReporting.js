import React, {Component} from 'react';
import './SponsorReporting.css';
import Layout from '../components/Layout';

import { Navigate } from 'react-router-dom';


// date range picker module from https://www.npmjs.com/package/react-date-range

class SponsorReporting extends Component{

  state = {
    loading: true,
    isSponsor: true,
    auditLog: false,
    point: false,
  }
  
//   componentDidMount() {
//     this.isAdmin();
//   }
    // isAdmin = () => {
    //     fetch('/isAdmin')
    //     .then(response => response.json())
    //     .then(response => {
    //     this.setState({loading: false, isAdmin: response.is_admin})
    //     if(response.is_admin){
    //         this.getDrivers()
    //         this.getSponsors()
    //         this.getAdmin()
    //     }
    //     })
    //     .catch(err => console.error(err))
    // }


  handleAuditLog = () => {
    this.setState({auditLog: true})
  }

  handlePoint = () => {
      this.setState({point: true})
  }

  render() {
    // if (this.state.isSponsor){
      if( this.state.auditLog ) {
        //render audit log filter
        return(<Navigate to='/SponsorAuditLogReports'/>);
      }
      else if( this.state.point ) {
        //render invoice filter
        return(<Navigate to='/SponsorPointReports'/>);
      }
      return (
        <Layout userType={1}>
          
          <div>
              <button  className='ReportButton' onClick={this.handleAuditLog}>Audit Log Report</button>
              <button  className='ReportButton' onClick={this.handlePoint}>Driver Points Report</button>
          </div>

        </Layout>
      );
    // }else{
    //   return (
    //     <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
    //   );
    // }
  };
}

export default SponsorReporting;
