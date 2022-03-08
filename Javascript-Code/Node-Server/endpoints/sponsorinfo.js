module.exports = function(app, connection){
    app.get('/getDrivers', (req, res) => {
      const driver_query = "SELECT uID, fname, lname from new_schema.USER where userType = 0;";
      connection.query(driver_query, function(err, result) {
        if(err) console.log(err);
        console.log(result);
        return res.json({
          drivers: result
        })
      })
    });
}