import React from 'react';

class ReportsFilter extends React.Component {

    state = {

        sps: {}

    };

    submit = (event) => {

        this.props.parentCallback(event.target)

    }

    getSponsors = () => {

        fetch('/getSponsors', {
            method: 'GET', 
            headers: { 'Content-Type': 'application/json' },
        })
        .then(response => response.json())
        .then( response => {
            console.log(response)
            this.setState({sps: response})
        })
        .catch(err => console.error(err));

    };

    render() {

        return (
            <div>
            <button onClick={this.getSponsors}> Get Sponsors </button>
            </div>
        )

    }

}

export default ReportsFilter;