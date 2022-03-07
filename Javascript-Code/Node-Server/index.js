
const crypt = require("./services/encryption.js");
const express = require('express');
const path = require('path');
const cors = require('cors')
const bodyParser = require("body-parser");
const logs = require("./logs/logging.js");


const PORT = process.env.PORT || 4000;

const app = express();

app.use(bodyParser.urlencoded({
  extended: false
}));
app.use(bodyParser.json());

app.use(cors());

const mysql = require('mysql');
const { response } = require('express');
const { rmSync } = require('fs');

var connection = mysql.createConnection({
  host: "groupfour-database.crvi1tvxyfsa.us-east-1.rds.amazonaws.com",
  user: "admin",
  password: "cpsc4910group4",
  port: "3306",
  database: "new_schema"
});

connection.connect(function(err) {
  if(err){
    console.error('Database connection faild: ' + err.stack);
    return;
  }
  console.log('Connected to database');
})

//Require endpoints from other files
require('./endpoints/sponsorinfo')(app, connection);
require('./endpoints/points')(app, connection);

app.get('/test', (req, res) => {
    connection.query('SELECT * FROM test.test_table', (err, results) => {
      if(err){
        return res.send(err)
      }
      else {
        return res.json({
          data: results
        })
      }
    })
});

// API for login information
// I will move this into it's own file/work on the structure of the node server in sprint 5
// - joey

app.post('/login-attempt', (req, res) => {

  console.log('Recieved login attempt');
  console.log(req.body);
  // get input
  let username = req.body.username;
  let password = req.body.password;

  //make sure username & password exist
  if( username && password && !password.includes("\'") && !password.includes("\"") ) {

    //hash password
    // res.send('got username & password');
    // console.log('Got username and password.');
    //sql query to compare password
    //if correct --> res.redirect('/home');
    //else --> give error message

    var testing = false; //variable for testing fxns

    //clean username input to prevent SQL injections
    const clean_username = username.split(" ");

    //create accounts for testing
    if( testing ) {

      //get hashed password
      var hpass = crypt.getHash(password);

      //create new driver with hashed password
      // username: driver
      // password: driverpassword
      const driver_query = "insert into USER values (2, -1, 'Guy', 'Driver', 'driver', '" + hpass + "', 'driver@email.net', '0987654567', 0);";

      //create new sponsor with hashed password
      // username: sponsor
      // password: sponsorpassword
      const sponsor_query = "insert into USER values (3, -1, 'Girl', 'Sponsor', 'sponsor', '" + hpass + "', 'sponsor@email.net', '0987654569', 1);";

      // create new amin with hashed password
      // username: admin
      // password: adminpassword
      const admin_query = "insert into USER values (4, -1, 'Person', 'Admin', 'admin', '" + hpass + "', 'admin@email.net', '0987654561', 2);";
      // connection.query(admin_query);
    }

    const sel_query = "SELECT password, userType from new_schema.USER where username = \"" + clean_username[0] + "\";";

    //poll db
    connection.query(sel_query, function(err, result, fields) {
      if(err) console.log(err);
      console.log(result);
      
      const isEmpty = Object.keys(result).length === 0;

      //case for successful login
      if( (!isEmpty) && crypt.validatePassword(password, result[0].password) ) {
        console.log("Password Match!");
        logs.recordLogin(username, true, connection);
        res.send({success: true, userType: result[0].userType});
      }

      //case for unsuccessful login
      else {
        console.log("password fail");
        logs.recordLogin(username, false, connection);
        res.send({success: false});
      }
    });
  } 
  else {
    logs.recordLogin(username, false, connection);
    res.send({success: false});
    console.log('no username/password.');
    res.end()
  }

});


//elise working on signup
app.post('/signup-attempt', (req, res) => {

  console.log('Received signup attempt');
  console.log(req.body);
  // get input
  let username = req.body.username;
  let password = req.body.password;
  let firstname = req.body.firstname;
  let lastname = req.body.lastname;
  let confirmpassword = req.body.confirmpassword;

  //make sure user entered each required field
  if( username && password && firstname && lastname && confirmpassword) {

    res.send('got sign up info');
    console.log('Got sign up information.');
    //sql query to confirm information and create an account
    //if correct --> res.redirect('/home');
    //else --> give error message
  }
  else {
    res.send("Incorrect Sign Up info :(");
    console.log('no sign up info.');
    res.end()
  }
});

app.use(express.static(path.join(__dirname, "../react-client", 'build')));

app.get('/*', function (req, res) {
  res.sendFile(path.join(__dirname, "../react-client", 'build', 'index.html'));
});

app.listen(PORT, () => {
    console.log(`Node server listening on port ${PORT}`)
});