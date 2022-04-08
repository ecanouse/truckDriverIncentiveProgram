import React from 'react';
import DateRangeFilter from './DateRangeFilter';
import PropTypes from "prop-types";

// instlled module for date-range-picker from https://www.npmjs.com/package/react-date-range

class ReportsFilter extends React.Component {

    state = {

        orgs: [],
        loaded: false,
        startDate: '',
        endDate: '',
        org: ''
    };

    submit = (event) => {

        this.props.callBack({
            startDate: this.state.startDate,
            endDate: this.state.endDate,
            org: this.state.org
        })

    }

    getSponsors = () => {

        fetch('/getAllOrganizations', {
            method: 'GET', 
            headers: { 'Content-Type': 'application/json' },
        })
        .then(response => response.json())
        .then( response => {
            console.log(response)
            this.setState({
                orgs: response.orgs,
                org: response.orgs[0].sponsorID,
                orgName: response.orgs[0].orgName,
            })
        })
        .catch(err => console.error(err));

    };

    handleSelect(ranges) {
        console.log(ranges)
    }

    onChange = (ranges) => {
        // ranges ...
        console.log(ranges);
        this.setState({startDate: ranges.startDate.toLocaleString(), endDate: ranges.endDate.toLocaleString()});
        console.log(this.state)
    };

    changeOrg = (e) => {
        const org = this.state.orgs.find(org => parseInt(org.sponsorID) === parseInt(e.target.value))
        this.setState({org: org.orgName})
    }
    

    render() {

        if( !this.state.loaded ) {
            this.getSponsors();
            this.setState({loaded: true});
        }


        return (

            <div>
                <div>
                <p> Select Filters for Report Query</p>
                </div>
                <label htmlFor='SelectSponsor'>Select Sponsor:</label>
                <select className='DriverCatalog-Select' id='SelectSponsor' onChange={this.changeOrg}>
                    {this.state.orgs.map((org, i) => {return(
                      <option value={org.sponsorID} key={i}>{org.orgName}</option>
                    )})}
                </select>

                <p>Select Date Range</p>
                <p>
                    <DateRangeFilter onChange={this.onChange}/>
                </p>
            
                <div>
                    <button onClick={this.submit}> Submit </button>
                </div>
            </div>
        )

    }

};

ReportsFilter.propTypes = {
    callBack: PropTypes.func
}

export default ReportsFilter;