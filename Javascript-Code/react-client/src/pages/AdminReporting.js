import React, {Component} from 'react';
import './AdminReporting.css';
import ReportingWindow from '../components/ReportingWindow.js';
import Layout from '../components/Layout';

class AdminReporting extends Component{
//   state = {
//     loading: true,
//     isSponsor: false
//   }
  
//   componentDidMount() {
//     this.isSponsor();
//   }

  render() {
    // if (this.state.isSponsor){
      return (
        <Layout userType={2}>
            <ReportingWindow></ReportingWindow>
        </Layout>
      );
    // }else{
    //   return (
    //     <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
    //   );
    // }
  }
}

export default AdminReporting;
