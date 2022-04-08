import React, {Component} from 'react';
import './AdminReporting.css';
import Layout from '../components/Layout';

import { Navigate } from 'react-router-dom';


// date range picker module from https://www.npmjs.com/package/react-date-range

class AdminReporting extends Component{

  state = {
    loading: true,
    isAdmin: true,
    auditLog: false,
    invoice: false,
    sales: false
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

  render() {
    // if (this.state.isSponsor){
      if( this.state.auditLog ) {
        //render audit log filter
        return(<Navigate to='/AuditLogReports'/>)
      }
      else if( this.state.invoice ) {
        //render invoice filter
      }
      else if( this.state.sales ) {
        //render sales filter
      }
      return (
        <Layout userType={2}>
          
          <div>
              <button  className='ReportButton' onClick={this.handleAuditLog}>Audit Log Report</button>
              <button  className='ReportButton'>Invoice Report</button>
              <button  className='ReportButton'>Sales Report</button>
          </div>

          <div>
            
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

export default AdminReporting;
