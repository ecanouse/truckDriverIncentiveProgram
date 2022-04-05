import React, {Component} from 'react';
import Layout from '../components/Layout';
import './PointHistory.css'
import { AiOutlineArrowUp } from 'react-icons/ai';

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

  getPoints = () => {
    fetch('/get-points')
    .then(response => response.json())
    .then(response => this.setState({points: response.Points}))
    .catch(err => console.error(err))
  }

  render() {
    if (this.state.isDriver){
      return (
        <Layout userType={0}>
            <select className='SortByDrop' id='SortByDrop' defaultValue={"sort"}>
              <option disabled hidden value="sort">Sort By</option>
              <option>All Time</option>
              <option>Last 24 Hours</option>
              <option>Last 7 Days</option>
              <option>Last 30 Days</option>
            </select>

            {this.state.points.map((p) => {
              return(
                <div className='PointDisplay'>
                  <p>Total: {p.totalPoints},  For Sponsor (id): {p.sponsorID.na}</p>
                  <p>All adjustments</p>
                  {p.adjustments.map(a => 
                  
                    <p>Reason: {a.pointReason}, <span className='Alignment'>Value: {a.pointValue},</span>
                    <br/> 
                        Date: {a.date}
                        <br/><hr/><br/>
                    </p>
                     
                    )}   
                       
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
