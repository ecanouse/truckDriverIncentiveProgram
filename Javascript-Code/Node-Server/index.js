const express = require('express');
const path = require('path');
const cors = require('cors')


const PORT = process.env.PORT || 4000;

const app = express()
app.use(cors())

const mysql = require('mysql')

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

app.use(express.static(path.join(__dirname, "../react-client", 'build')));

app.get('/*', function (req, res) {
  res.sendFile(path.join(__dirname, "../react-client", 'build', 'index.html'));
});

app.listen(PORT, () => {
    console.log(`Node server listening on port ${PORT}`)
});