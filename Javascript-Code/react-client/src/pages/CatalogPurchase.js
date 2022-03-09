import React, {Component} from 'react';
import './CatalogPurchase.css'

class CatalogPurchase extends Component{
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
        <div className='DriverCatalogPurchase'>
          <header className='DCP-Header'>
            <img src="SponsorLogo.png" alt="Sponsor Logo" width="250" height="100"></img>
            <nav className='Nav'>
              <button href='DriverHome' className='NavButtons'>Home</button>
              <button href='PointHistory' className='NavButtons'>Points</button>
              <button href='CatalogPurchase' className='NavButtons'>Catalog</button>
              <button href='UpdateAccount' className='NavButtons'>Settings</button>
            </nav>
            <ul className='DCPLout-UpAcc'>
              <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
              <li><a href='UpdateAccount'>Username</a></li>
              <li><a href='Home'>Logout</a></li>
            </ul>
          </header>
          <body>
            <h1 align='center'><br/><br/>Thank you For Your Order!<br/></h1>
            <p align='center'>We will be sending a shipping confirmation email when the item has shipped successfully.<br/></p>  
            <div className='OrderConfirm'>         
              <div className='OrderConfirmNum'>
                <h3>Order Confirmation #</h3>
              </div>
              <div className='PriceAddons'>
                <p>Purchased Item(s)</p>
                <p>Shipping</p>
                <p>Sales Tax</p>
                <p>Discount</p>
                <hr/>
                <h3>Total</h3>
              </div>
            </div>
          </body>

          <footer className='DCP-Footer'>
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

export default CatalogPurchase;
