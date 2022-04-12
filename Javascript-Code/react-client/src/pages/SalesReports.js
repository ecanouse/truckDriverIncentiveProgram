import React, {Component} from 'react';
import './SalesReports.css';
import Layout from '../components/Layout';
import ExportButton from '../components/ExportButton';
import ReportsTitle from '../components/ReportsTitle';
import ReportsDriverFilter from '../components/ReportsDriverFilter';
import DetailedTable from '../components/DetailedTable';
import ReportsFilter from '../components/ReportsFilter';
import { isThisSecond } from 'date-fns';

const driver_columns = [
    {
        name: 'First Name',
        selector: row => row.fname,
    },
    {
        name: 'Last Name',
        selector: row => row.lname,
    },
    {
        name: 'Total',
        selector: row => row.total,
    },
];

const sponsor_columns = [
    {
        name: 'First Name',
        selector: row => row.fname,
    },
    {
        name: 'Last Name',
        selector: row => row.lname,
    },
    {
        name: 'Total',
        selector: row => row.total,
    },
];

class SalesReports extends Component{
    state = {
      loading: true,
      isAdmin: true,
      data_fetched: false,
      driver_reports: false,
      sponsor_reports: false,
      row_data: {},
      columns: [],
      startDate: '',
      endDate: ''
    }
  
  
    
  //   componentDidMount() {
  //     this.isAdmin();
  //   }
  
  // make new component with param to see wich kind of report
  // contain inner fxn falls and queries
  
    // getAuditLogReport = async(data) => {
  
    //   var payload = {
    //       startDate: data.startDate,
    //       endDate: data.endDate,
    //       orgName: data.org
    //   };
  
    //   console.log(payload)
    //   await fetch('/getLoginAttempts', {
    //       method: 'POST', //post request
    //       headers: { 'Content-Type': 'application/json' },
    //       body: JSON.stringify(payload) //put into json form
    //   })
    //   .then(response => response.json())
    //   .then(response => {
    //       this.setState({login_data: response});
    //       console.log(response);
    //   })
    //   .catch(err => console.error(err));
  
    //   await fetch('/getPasswordChanges', {
    //     method: 'POST', //post request
    //     headers: { 'Content-Type': 'application/json' },
    //     body: JSON.stringify(payload) //put into json form
    //   })
    //   .then(response => response.json())
    //   .then(response => {
    //       this.setState({password_data: response});
    //       console.log(response);
    //   })
    //   .catch(err => console.error(err));
  
    //   await fetch('/getPointAdjustments', {
    //     method: 'POST', //post request
    //     headers: { 'Content-Type': 'application/json' },
    //     body: JSON.stringify(payload) //put into json form
    //   })
    //   .then(response => response.json())
    //   .then(response => {
    //       this.setState({point_data: response});
    //       console.log(response);
    //   })
    //   .catch(err => console.error(err));
  
    //   await fetch('/getApplications', {
    //     method: 'POST', //post request
    //     headers: { 'Content-Type': 'application/json' },
    //     body: JSON.stringify(payload) //put into json form
    //   })
    //   .then(response => response.json())
    //   .then(response => {
    //       this.setState({app_data: response});
    //       console.log(response);
    //   })
    //   .catch(err => console.error(err));
  
    //   this.setState({data_fetched: true});
    // };

    getSalesReportByDriver = async(data) => {

        console.log("fetching report!");

        //fetch for single table -- need to also have detailed & summary
                //fetch for single table -- need to also have detailed & summary

        // inputs --> data
            // data = startDate: '', endDate: '', org: 'Amazon', driverID: 3
        // outputs --> results
            // results = results.<row data> results.<expanded component data>

        var payload = {
            startDate: data.startDate,
            endDate: data.endDate,
            orgName: data.org,
            uID: data.driverID
        };
    
        console.log(payload)
        await fetch('/getSalesByDriver', {
            method: 'POST', //post request
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(payload) //put into json form
        })
        .then(response => response.json())
        .then(response => {
            this.setState({row_data: response});
            console.log(response);
        })
        .catch(err => console.error(err));

        this.setState({data_fetched: true});

    }

    getSalesReportBySponsor = async(data) => {

        console.log("fetching report!");

        //fetch for single table -- need to also have detailed & summary

        // inputs --> data
            // data = startDate: '', endDate: '', org: 'Amazon', driverID: 3
        // outputs --> results
            // results = results.<row data> results.<expanded component data>

        

        this.setState({data_fetched: true});

    }
  
    
  
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
  
      drivercallback = (data) => {
        console.log("printing data");
        console.log(data);
        const sdate = data.startDate;
        const edate = data.endDate
        this.setState({ //giving up on trying to figure out why the state is not setting /getting deleted for some reason
          startDate: sdate,
          endDate: edate,
          driverID: data.driverID
        }, () => {
          this.getSalesReportByDriver(data);
        });
      }

      sponsorcallback = (data) => {
        console.log("printing data");
        console.log(data);
        this.setState({
          startDate: data.startDate,
          endDate: data.endDate
        }, () => {
          this.getSalesReportBySponsor(data);
        });
      }
    
      setSponsorReports = () => {
          this.setState({
              sponsor_reports: true,
              columns:sponsor_columns
          });
      };

      setDriverReports = () => {
          this.setState({
              driver_reports: true,
              columns:driver_columns
          });
      };

    render() {
      // if (this.state.isSponsor){
        if( !this.state.sponsor_reports & !this.state.driver_reports ) {

            return (
                <Layout userType={2}>
                    <p>Select Tye of Sales Report</p>
                    <p>
                        <button onClick={this.setSponsorReports}>Sales Reports By Sponsor</button>
                    </p>
                    <p>
                        <button onClick={this.setDriverReports}>Sales Reports By Driver</button>
                    </p>
                </Layout>
            );

        }
        else if(!this.state.data_fetched & this.state.driver_reports) {

          return (
            <Layout userType={2}>
                <ReportsDriverFilter callBack={this.drivercallback}/>
            </Layout>
          );
  
        }
        else if(!this.state.data_fetched & this.state.sponsor_reports) {

            return (
              <Layout userType={2}>
                  <ReportsFilter callBack={this.sponsorcallback}/>
              </Layout>
            );
    
          }
        else {
            console.log("CURRENT START DATE: "+this.startDate)
            return (
                <Layout userType={2}>
                    <ReportsTitle content="Driver Sales Report"/>
                    {/* <DetailedTable data={this.state.row_data} columns={this.state.columns} expandableRowsComponent={ExpandedComponent}/> */}
                    <DetailedTable data={this.state.row_data} columns={this.state.columns} startDate={this.startDate}/>
                    <ExportButton data={this.state.row_data}>Export</ExportButton>
                </Layout>
            );
        }
      // }else{
      //   return (
      //     <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      //   );
      // }
    };
  }
  
  export default SalesReports;
  