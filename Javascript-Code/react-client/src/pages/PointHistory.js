import React, {Component} from 'react';
import './PointHistory.css'

class PointHistory extends Component{
  state = {
    loading: true,
    isDriver: false
  }
  
  componentDidMount() {
    this.isDriver();
  }

  isDriver = () => {
    fetch('/isDriver')
    .then(response => response.json())
    .then(response => this.setState({loading: false, isDriver: response.is_driver}))
    .catch(err => console.error(err))
  }

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
            
          </body>

          <footer className='PointHistory-Footer'>
            <img src="teamLogo.png" alt="The Mad Lads Team Logo" width="200" height="70"></img>
          </footer>
        </div>
      );
    }else{
      return (
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
  }
}

export default PointHistory;
