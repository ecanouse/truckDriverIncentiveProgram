
import DataTable from 'react-data-table-component';
import React, {Component} from 'react';
import './DetailedTable.css'





class DetailedTable extends Component {

    state = {
        info: {},
        uID: -1
    }

    convertData = async(data) => {
        console.log(this.props.startDate);
        if(data.uID != this.state.uID) {
            await fetch('/getDetailedDriverInfo', {
                method: 'POST', //post request
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({data: data, startDate: this.props.startDate}) //put into json form
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
        
        console.log(this.state.info)
    }

    // make query to get drvier's items based off the data row, return the results!
    render() {
        
        const ExpandedComponent = ({ data }) => <pre>{JSON.stringify(this.state.info, this.convertData(data), 2)}</pre>;

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