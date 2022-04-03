const mysql = require('mysql');
/* need a fxn to take string from db & convert to date()

    need fxn to compare to see if 20 min has passed

    fxn to actually query the database table

*/

//takes string, returns new date object
function convert_string( date_string ) {

    date = new Date( date_string );

    return date;
}

//gets time 20 min passed give time
function get_unlock_time( date ) {

    date.setMinutes(date.getMinutes() + 20);

    return date;
}

// returns true if lockout time has passed
function compare_times( login_time, lockout_time ) {

    const logtime = login_time.getTime();
    const locktime = lockout_time.getTime();

    if( logtime > locktime ) {
        return true;
    }
    else {
        return false;
    }
}

// login_time --> Date() of login
// username --> username of account trying to login
// connection --> mysql database connection obj
function validateLogin( login_time, username, connection ) {

    var sel_query = "SELECT lock_time, attempts from LOCKOUT WHERE LOCKOUT.username = \'" + username + "\';";

    //get locktime & attempts

    // attempts > 10, then update locktime

    connection.query(sel_query, function(err, result, fields) {

        if (result[0].attempts >= 10) {
            //lockout account with locktime
        }

        else {
            // increment attempts
            
        }

    });
    // d2 = new Date( d1.toLocaleString() );
    // d2.setMinutes(d2.getMinutes() + 20);

    //new login usrname query
    var new_query = "INSERT INTO LOCKOUT( username, attempts ) VALUES (\'" + username + "\', 0);"

}


// d1 = new Date('3/7/2022, 3:11:40 PM');
// d2 = new Date( d1.toLocaleString() );
// d2.setMinutes(d2.getMinutes() + 20);

// console.log( d1 - d2 );
// console.log( d2 - d1 );

// if( d2 > d1 ) {
//     console.log("good");
// }

// var test_string = '3/7/2022, 3:11:40 PM'

// date = convert_string(test_string);

// console.log("login time: " + date.getTime());
// unlock_time = date;
// unlock_time = get_unlock_time( unlock_time );
// console.log("unlock time: " + unlock_time.getTime());
// console.log("Login > unlock: " + compare_times( date, unlock_time ));

// console.log("test: ");
// console.log( unlock_time.getMinutes() - date.getMinutes() );

var connection = mysql.createConnection({
    host: "groupfour-database.crvi1tvxyfsa.us-east-1.rds.amazonaws.com",
    user: "admin",
    password: "cpsc4910group4",
    port: "3306",
    database: "new_schema"
});

validateLogin(new Date(), 'username1', connection);

connection.end()