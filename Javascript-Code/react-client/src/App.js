import React, {Component} from 'react';
import {BrowserRouter, Routes, Route} from 'react-router-dom';
import Home from './pages/Home';
import AdminHome from './pages/AdminHome';
import CatalogPurchase from './pages/CatalogPurchase';
import DriverHome from './pages/DriverHome';
import Login from './pages/Login';
import PointAssignment from './pages/PointAssignment';
import PointHistory from './pages/PointHistory';
import Signup from './pages/Signup';
import SponsorApplications from './pages/SponsorApplications';
import SponsorCatalog from './pages/SponsorCatalog';
import SponsorHome from './pages/SponsorHome';
import UpdateAccount from './pages/UpdateAccount';
import NotFound from './pages/NotFound';
import ResetPass from './pages/ResetPass';
import DiscoverUN from './pages/DiscoverUN';
import DriverCatalog from './pages/DriverCatalog';
import AdminReporting from './pages/AdminReporting';
import PurchaseHistory from './pages/PurchaseHistory';
import SponsorPurchasing from './pages/SponsorPurchasing';

class App extends Component{
  render() {
    return (
      <BrowserRouter>
        <Routes>
          <Route path="/adminhome" element={<AdminHome/>}/>
          <Route path="/catalogpurchase" element={<CatalogPurchase/>}/>
          <Route path="/driverhome" element={<DriverHome/>}/>
          <Route path="/login" element={<Login/>}/>
          <Route path="/pointassignment" element={<PointAssignment/>}/>
          <Route path="/pointhistory" element={<PointHistory/>}/>
          <Route path="/signup" element={<Signup/>}/>
          <Route path="/sponsorapplications" element={<SponsorApplications/>}/>
          <Route path="/sponsorcatalog" element={<SponsorCatalog/>}/>
          <Route path="/sponsorhome" element={<SponsorHome/>}/>
          <Route path="/updateaccount" element={<UpdateAccount/>}/>
          <Route path="/" element={<Home/>}/>
          <Route path="*" element={<NotFound/>}/>
          <Route path="ResetPass" element={<ResetPass/>}/>
          <Route path="DiscoverUN" element={<DiscoverUN/>}/>
          <Route path='DriverCatalog' element={<DriverCatalog/>}/>
          <Route path='/AdminReporting' element={<AdminReporting/>}/>
          <Route path='PurchaseHistory' element={<PurchaseHistory/>}/>
          <Route path='SponsorPurchasing' element={<SponsorPurchasing/>}/>
        </Routes>
      </BrowserRouter>
    )
  }
}

export default App;
