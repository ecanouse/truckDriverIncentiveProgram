const express = require('express');
const path = require('path');
const cors = require('cors')
const bodyParser = require("body-parser");


const PORT = process.env.PORT || 4000;

const app = express();
app.use(bodyParser.urlencoded({
  extended: false
}));
app.use(bodyParser.json());

app.use(cors());

const mysql = require('mysql');
const { response } = require('express');

var connection = mysql.createConnection({
  host: "groupfour-database.crvi1tvxyfsa.us-east-1.rds.amazonaws.com",
  user: "admin",
  password: "cpsc4910group4",
  port: "3306",
});

connection.connect(function(err) {
  if(err){
    console.error('Database connection faild: ' + err.stack);
    return;
  }
  console.log('Connected to database');
})

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
// I will move this into it's own file/work on the structure of the node server in sprint 4
// - joey

app.post('/login-attempt', (req, res) => {

  console.log('Recieved login attempt');
  console.log(req.body);
  // get input
  let username = req.body.username;
  let password = req.body.password;

  //make sure username & password exist
  if( username && password ) {

    //hash password
    res.send('got username & password');
    console.log('Got username and password.');
    //sql query to compare password
    //if correct --> res.redirect('/home');
    //else --> give error message
  }
  else {
    res.send("Incorrect Username and/or Password :(");
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