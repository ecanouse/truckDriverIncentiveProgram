
// functions to write to log files

//tentative format for logging login attempts:
//LOGIN <date> <username> <login attempt status --> "success"/""fail"><\n>
function recordLogin( username, success, conn ) {
    const fs = require('fs');
    var date = new Date().toLocaleString();
    var res;
    if( success ) {
        res = 1;
    }
    else {
        res = 0;
    }

    record_query = "INSERT INTO LOGIN_ATTEMPTS( date, username, success ) VALUES (\'" + date + "\', \'" + username + "\'," + res + ");"

    conn.query(record_query, (err) => {
        if (err) {
            console.log(err);
            return err;
        }
    });

    return date;
    
}


module.exports = { recordLogin };