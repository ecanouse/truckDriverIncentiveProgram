import React, {Component} from 'react';
import './PointHistory.css'

class PointHistory extends Component{
  render() {
    if (this.state.isDriver){
      return (
        <div className='PointHistoryPage'>
          <header className='PointHistory-Header'>
            <img src="SponsorLogo.png" alt="Sponsor Logo" width="250" height="100"></img>
            <nav className='Nav'>
              <a href='DriverHome'>
                <button href='DriverHome' className='NavButtons' >Home</button>
              </a>
              <a href='PointHistory'>
                <button className='NavButtons'>Points</button>
              </a>
              <a href='CatalogPurchase'>
                <button className='NavButtons'>Catalog</button>
              </a>
              <a href='UpdateAccount'>
                <button className='NavButtons'>Settings</button>
              </a>
            </nav>
            <ul className='PointHistoryLout-UpAcc'>
              <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
              <li><a href='UpdateAccount'>Username</a></li>
              <li><a href='Home'>Logout</a></li>
            </ul>
          </header>
          
          <body>
            <select className='SortByDrop' id='SortByDrop'>
              <option disabled selected hidden>Sort By</option>
              <option>All Time</option>
              <option>Last 24 Hours</option>
              <option>Last 7 Days</option>
              <option>Last 30 Days</option>
            </select>

            {this.state.points.map((p) => {
              return(
                <div className='PointDisplay'>
                  
                  <p>Total: {p.totalPoints},  For Sponsor (id): {p.sponsorID}</p>
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
          </body>

        <footer className='PointHistory-Footer'>
          <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="200" height="70"></img>
        </footer>
      </div>
    );
  }
}}

export default PointHistory;
