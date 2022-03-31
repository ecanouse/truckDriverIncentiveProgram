import React, {Component} from 'react';
import CatalogItem from '../components/CatalogItem';
import Layout from '../components/Layout';
import './DriverCatalog.css'

class DriverCatalog extends Component{
  state = {
    loading: true,
    isDriver: false,
    items: [],
    orgs: [],
    org: -1,
    orgName: '',
    pointsPerDollar: 0,
    cart: []
  }
  
  componentDidMount() {
    this.isDriver();
  }

  getItems = () => {
    fetch('/getSponsorItems?' + new URLSearchParams({
      sponsorID: this.state.org,
    }))
    .then(response => response.json())
    .then(response => this.setState({items: response.items}))
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
        pointsPerDollar: response.orgs[0].pointsPerDollar,
      }, this.getItems)
    })
    .catch(err => console.error(err))
  }

  isDriver = () => {
    fetch('/isDriver')
    .then(response => response.json())
    .then(response => {
      this.setState({loading: false, isDriver: response.is_driver})
      if(response.is_driver){
        this.getOrgs();
      }
    })
    .catch(err => console.error(err))
  }

  changeOrg = (e) => {
    const org = this.state.orgs.find(org => parseInt(org.sponsorID) === parseInt(e.target.value))
    this.setState({
      org: org.sponsorID,
      orgName: org.orgName,
      pointsPerDollar: org.pointsPerDollar,
    }, this.getItems)
  }

  addToCart = (listingId) => {
    let newCart = this.state.cart;
    const item = newCart.findIndex(item => parseInt(item.listingId) === parseInt(listingId))
    if(item!==-1){
      newCart[item].quantity = newCart[item].quantity + 1
    }else{
      newCart.push({
        listingId: listingId,
        quantity: 1
      })
    }
    this.setState({
      cart: newCart
    })
    console.log(this.state.cart)
  }

  render() {
    if (this.state.isDriver){
      return (
        <Layout userType={0}>
          <div className='DriverCatalog-SelectLabel'>
            <label htmlFor='SelectSponsor'>Select Sponsor:</label>
            <select className='DriverCatalog-Select' id='SelectSponsor' onChange={this.changeOrg}>
                {this.state.orgs.map((org, i) => {return(
                  <option value={org.sponsorID} key={i}>{org.orgName}</option>
                )})}
            </select>
          </div>
          <div className='DriverCatalog-Items'>
            <div className='DriverCatalog-Title'>
              <h1>{this.state.orgName} Catalog</h1>
            </div>
            {this.state.items.map((item, i) => {
              return(
                <CatalogItem key={i} item={item} ppd={this.state.pointsPerDollar} buttonClick={this.addToCart}/>
            )})}
          </div>
        </Layout>
      );
    }else{
      return (
        <h1>{this.state.loading ? "" : "401: Unauthorized"}</h1>
      );
    }
  }
}

export default DriverCatalog;