import React, {Component} from 'react';
import './DriverHeader.css'

class DriverHeader extends Component {
    state = {
        username: ''
    }

    componentDidMount(){
        this.getUsername();
    }

    getUsername = () => {
        fetch('/get-acc-info?' + new URLSearchParams({
          uID: '-1'
        }))
        .then(response => response.json())
        .then(response => {
          console.log(response)
          this.setState({
            username: response.user.username,
          })
        })
        .catch(err => console.error(err))
      }

    logout = () => {
        fetch('/logout')
        .catch(err => console.error(err))
        this.props.isUser()
    }
    render() {
        return (
            <div className='Driver-Header'>
            <link rel='icon' href='websiteicon.png'/>
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

              <select>
              <option>select</option>
              <option href='DriverHome'>Home</option>
              <option href='PointHistory'>Points</option>
              <option href='CatalogPurchase'>Catalog</option>
              <option href='UpdateAccount'>Settings</option>
            </select>
            </nav>
  

            <ul className='DriverLout-UpAcc'>
              <img src='DefaultProfPic.png' alt='Default Profile Picure' width='40' height='40'/>
              <li><a href='UpdateAccount'>{this.state.username}</a></li>
              <li><a href='login' onClick={() => this.logout()}>Logout</a></li>
            </ul>
          </div>
        )
    }
}

export default DriverHeader;