import React, {Component} from 'react';
import './AdminReporting.css';
import ReportingWindow from '../components/ReportingWindow.js';
import Layout from '../components/Layout';

class AdminReporting extends Component{
  state = {
    loading: true,
    isAdmin: true,
    columns: {},
    data: {}
  }
  
//   componentDidMount() {
//     this.isAdmin();
//   }

// RIPPED FROM LOGIN (just for reference)
// submit = (event) => {
//     event.preventDefault(); //prevent's browser from reloading
//     console.log("Submitting to server");
//     //stored data
//     var payload = {
//       username: this.state.username,
//       password: this.state.password
//     };

//     //sending data to node server
//     fetch('/login-attempt', {
//       method: 'POST', //post request
//       headers: { 'Content-Type': 'application/json' },
//       body: JSON.stringify(payload) //put into json form
//     })
//     .then(response => {
//       if( response.status === 200 ) {
//         //this.setState({redirect: true});
//         response.json().then( data => {
//           if( data.success ) {
//             document.getElementById('login_displaybox').style.color = "black";
//             this.setState({userType: data.userType});
//             this.setState({msg: "Logging in..."});
//             this.setState({redirect: true});
//           }
//           else {
//             //display fail message
//             console.log("Username & Password do not match.")
//             this.setState({msg: data.msg})
//           }
//         })
//       }
//     })
//     .catch((error) => {
//       console.error('Error', error);
//     });
//   };


// make new component with param to see wich kind of report
// contain inner fxn falls and queries

  getAuditLogReport = () => {

    var payload = {
        filter: "none"
    };

    fetch('/getAuditLogReport', {
        method: 'POST', //post request
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload) //put into json form
    })
    .then(response => response.json())
    .then(response => {
        this.setState({data: response});
        console.log(response);
    })
    .catch(err => console.error(err));

  };

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
            <ReportingWindow data={this.state.data}></ReportingWindow>
            <button onClick={this.getAuditLogReport}>Audit Log Report</button>
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
