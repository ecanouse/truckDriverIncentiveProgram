import React, {Component} from 'react';
import './AdminReporting.css';
import Layout from '../components/Layout';


class AdminReporting extends Component{
  state = {
    loading: true,
    isAdmin: true,
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



  render() {
    // if (this.state.isSponsor){

      return (
        <Layout userType={2}>
          
          <div>
            <a href='AuditLogReports'>
              <button  className='ReportButton'>Audit Log Report</button>
            </a>
            <a href=''>
              <button  className='ReportButton'>Invoice Report</button>
            </a>
            <a href=''>
              <button  className='ReportButton'>Sales Report</button>
            </a>
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
