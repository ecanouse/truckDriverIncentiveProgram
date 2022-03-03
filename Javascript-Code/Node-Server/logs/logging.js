
// functions to write to log files

//tentative format for logging login attempts:
//LOGIN <date> <username> <login attempt status --> "success"/""fail"><\n>
function recordLogin( username, success, path ) {
    const fs = require('fs');
    var date = new Date().toLocaleString();
    var res;
    if( success ) {
        res = "success";
    }
    else {
        res = "fail";
    }
    const content = "LOGIN " + date + " " + username + " " + res + "\n";
    
    fs.appendFileSync(path, content, err => {
        if (err) {
            console.error(err);
            return;
        }
    });
}


module.exports = { recordLogin };