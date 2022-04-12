
import DataTable from 'react-data-table-component';
import React, {Component} from 'react';
import './DetailedTable.css'



// issue where expanding more than one column causes everything to go haywaire

class DetailedTable extends Component {

    state = {
        info: {},
        uID: -1,
        data: this.props.data,
        initialzed: false
    }

    convertData = async(data) => {
        console.log(this.props.startDate);
        if(data.uID != this.state.uID) {
            await fetch('/getDetailedDriverInfo', {
                method: 'POST', //post request
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({data: data, startDate: this.props.startDate, endDate: this.props.endDate}) //put into json form
            })
            .then(response => response.json())
            .then(response => {
                console.log(response);
                this.setState({
                    info: response,
                    uID: data.uID
                });
            })
            .catch(err => console.error(err));
        }
    }

    //approach 2
    // append info to the end of the data array upon loading, then display normally

    initializeData = async() => {

        for( let i = 0, len =this.state.data.length; i < len; i++ ) {

            await fetch('/getDetailedDriverInfo', {
                method: 'POST', //post request
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({data: this.state.data[i], startDate: this.props.startDate, endDate: this.props.endDate}) //put into json form
            })
            .then(response => response.json())
            .then(response => {
                console.log(response);
                // this.setState({
                //     info: response,
                //     uID: data.uID
                // });
            })
            .catch(err => console.error(err));

        }

    }

    // make query to get drvier's items based off the data row, return the results!
    render() {

        if( !this.state.initialzed ) {
            this.initializeData();
        }

        const ExpandedComponent = ({ data }) => <pre>{JSON.stringify(data, this.convertData(data), 2)}</pre>;

        return(
            
                <DataTable
                columns={this.props.columns}
                data={this.props.data}
                pagination
                expandableRows
                expandableRowsComponent={<ExpandedComponent/>}
                />
            
        );
    };

}

export default DetailedTable