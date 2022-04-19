import React, {Component} from 'react';
import Layout from '../components/Layout';
import './PointHistory.css'
import { AiOutlineArrowUp,  AiOutlineArrowDown} from 'react-icons/ai';

class PointHistory extends Component{
  state = {
    loading: true,
    isDriver: false,
    points: []
  }
  
  componentDidMount() {
    this.isDriver();
  }

  isDriver = () => {
    fetch('/isDriver')
    .then(response => response.json())
    .then(response => {
      this.setState({loading: false, isDriver: response.is_driver})
      if(response.is_driver){
        this.getPoints()
      }
    })
    .catch(err => console.error(err))
  }

  isPosOrNeg = (pointValue) => {
  const pvalue = pointValue;
    if (pvalue > 0) {
      return "pos";
    }
    else if (pvalue < 0) {
      return "neg";

    }
  }

  getPoints = () => {
    var e = document.getElementById("SortByDrop");
    var userChoice = e.value;
    console.log(userChoice)
    fetch('/get-points-sorts?' + new URLSearchParams({
      driver: -1, userChoice: userChoice,
    }))
    
    .then(response => response.json())
    .then(response => this.setState({
      points: response.Points,
    }))
    .catch(err => console.error(err))
    
  }

  getOrgs = () => {
    fetch('/getOrganizations?' + new URLSearchParams({
      uID: '-1',
    }))
    .then(response => response.json())
    .then(response => {
      this.setState({
        orgs: response.orgs,
        org: response.orgs[0].sponsorID,
        orgName: response.orgs[0].orgName,
      }, this.getItems)
    })
    .catch(err => console.error(err))
  }

  changeOrg = (e) => {
    const org = this.state.orgs.find(org => parseInt(org.sponsorID) === parseInt(e.target.value))
    this.setState({
      org: org.sponsorID,
      orgName: org.orgName,
    })
  }

  


  render() {
    if (this.state.isDriver){
      return (
        <Layout userType={0}>
          <select className='SortByDrop' id='SortByDrop' defaultValue={"sort"} onChange={this.getPoints}>
            <option value='allpoints'>Sort By</option>
            <option value='allpoints' >All Time</option>
            <option value='today'>Today</option>
            <option value='sevenDays'>Last 7 Days</option>
            <option value='thirtyDays'>Last 30 Days</option>
          </select>
   
          {this.state.points.map((p
          
          ) => {
            return(
              <div className='PointDisplay'>
                  <p>Total: {p.totalPoints},  For Sponsor (id): {p.sponsorID}</p>
                  <p>All adjustments <br/><hr/></p>
                  <div className='ValueDisplay'>
                    {p.adjustments.map(a => 
                      <p>
                      {this.isPosOrNeg(a.pointValue) === "pos" ? <span className='ArrowUp'><AiOutlineArrowUp/> {a.pointValue}</span> : <span className='ArrowDown'><AiOutlineArrowDown/> {a.pointValue}</span>}
                        <span className='Reason'>Reason: {a.pointReason}</span> <span className='Date'>Date: {a.date} </span>       
                        <hr/>            
                      </p>
                    )}   
                  </div>
                
              </div>
            )}
          )}
        </Layout>
      );
    }else{
      return (
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
  }
}

export default PointHistory;
