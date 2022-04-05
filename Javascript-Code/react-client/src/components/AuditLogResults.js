
import DataTable from 'react-data-table-component';
import React, {Component} from 'react';
import './AuditLogResults.css'

const columns = [
    {
        name: 'Date',
        selector: row => row.date,
    },
    {
        name: 'username',
        selector: row => row.username,
    },
    {
        name: 'success',
        selector: row => row.success,
    },
];

// Blatant "inspiration" from https://codepen.io/Jacqueline34/pen/pyVoWr
function convertArrayOfObjectsToCSV(array, data) {
	let result;

	const columnDelimiter = ',';
	const lineDelimiter = '\n';
	const keys = Object.keys(data[0]);

	result = '';
	result += keys.join(columnDelimiter);
	result += lineDelimiter;

	array.forEach(item => {
		let ctr = 0;
		keys.forEach(key => {
			if (ctr > 0) result += columnDelimiter;

			result += item[key];
			
			ctr++;
		});
		result += lineDelimiter;
	});

	return result;
}

// Blatant "inspiration" from https://codepen.io/Jacqueline34/pen/pyVoWr
function downloadCSV(array) {
    console.log("attempting to export")

	const link = document.createElement('a');
	let csv = convertArrayOfObjectsToCSV(array, array);
	if (csv == null) return;

	const filename = 'export.csv';

	if (!csv.match(/^data:text\/csv/i)) {
		csv = `data:text/csv;charset=utf-8,${csv}`;
	}

	link.setAttribute('href', encodeURI(csv));
	link.setAttribute('download', filename);
	link.click();
}


class AuditLogResults extends Component {
    
    render() {
        return(

                <DataTable
                columns={columns}
                data={this.props.data}
                pagination
                />
            // <div>
            //     <button onClick={downloadCSV(this.props.data)}>Export</button>
            // </div>
            
        );
    };

}

export default AuditLogResults