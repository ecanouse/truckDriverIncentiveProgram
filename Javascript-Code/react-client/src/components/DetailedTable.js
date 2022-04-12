
import DataTable from 'react-data-table-component';
import React, {Component} from 'react';
import './DetailedTable.css'
import ReportsTitle from './ReportsTitle';





class DetailedTable extends Component {

    convertData = (data) => {
        console.log(data);
        return {};
    }
    // make query to get drvier's items based off the data row, return the results!
    render() {
        
        const ExpandedComponent = ({ data }) => <pre>{JSON.stringify(this.convertData(data), null, 2)}</pre>;

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