module.exports = function(app, connection){
    function getDrivers(sponsorID, res) {
      const driver_query = `SELECT uID, fname, lname from new_schema.USER where userType = 0 AND sponsorID=${sponsorID};`;
      connection.query(driver_query, function(err, result) {
        if(err) console.log(err);
        return res.json({
          drivers: result
        })
      })
    }
    app.get('/getAllDrivers', (req, res) => {
      const driver_query = "SELECT uID, fname, lname from new_schema.USER where userType = 0;";
      connection.query(driver_query, function(err, result) {
        if(err) console.log(err);
        return res.json({
          drivers: result
        })
      })
    });

    app.get('/getSponsorDrivers', (req, res) => {
      session=req.session;
      const org_query = `SELECT sponsorID from new_schema.USER where uID=${session.userid};`;
      connection.query(org_query, function(err, result) {
        if(err){
          console.log(err);
        }else{
          return getDrivers(result[0].sponsorID, res)
        }
      })
    });
}