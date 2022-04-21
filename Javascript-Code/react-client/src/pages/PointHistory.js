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
    fetch('/get-points?' + new URLSearchParams({
      driver: '-1',
    }))
    .then(response => response.json())
    .then(response => this.setState({
      points: response.Points,
    }))
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
                  <p>Total: {p.totalPoints},  For Sponsor (id): {p.sponsorID}</p>
                  
                  <p>All adjustments <br/><hr/></p>

                  <div className='ValueDisplay'>
                  {p.adjustments.map(a => 
                    <p>
                      {this.isPosOrNeg(a.pointValue) === "pos" ? <span className='ArrowUp'><AiOutlineArrowUp/> {a.pointValue}</span> : <span className='ArrowDown'><AiOutlineArrowDown/> {a.pointValue}</span>}
                       <span className='Reason'>Reason: {a.pointReason}</span> <span type="date" className='Date'>Date: {a.date} </span>       
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
