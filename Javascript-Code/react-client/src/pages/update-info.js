//establish connection with mysql database
var mysql = require('mysql');
var con = mysql.createConnection({
   host: "groupfour-database.crvi1tvxyfsa.us-east-1.rds.amazonaws.com",
   user: "admin",
   password: "cpsc4910group4",
   database: "new_schema"
});

//query to send to database
//USER table, need column(s) to update and value(s) to update with
var dbquery = "UPDATE user SET ";

//send query to database
con.connect(function(err){
   if (err) throw err;
   con.query(dbquery, function (err, result) {
      if (err) throw err;
      console.log(result.affectedRows + ' records updated');
   });
});