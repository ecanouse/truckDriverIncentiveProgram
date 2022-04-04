module.exports = function(app, connection){
    app.get('/getOrganizations', (req, res) => {
      session=req.session;
      const userid = req.query.uID === '-1' ? session.userid : req.query.uID
      const orgs_query = `SELECT o.sponsorID, orgName, o.pointsPerDollar from new_schema.SPONSOR_ORG o INNER JOIN new_schema.USER_SPONSOR_REL r where r.uID=${userid} AND o.sponsorID = r.sponsorID;`;
      connection.query(orgs_query, function(err, result) {
        if(err){
          console.log(err);
        }else{
          return res.json({
            orgs: result
          })
        }
      })
    });

    app.get('/getAllOrganizations', (req, res) => {
      const orgs_query = `SELECT sponsorID, orgName, pointsPerDollar from new_schema.SPONSOR_ORG;`;
      connection.query(orgs_query, function(err, result) {
        if(err){
          console.log(err);
        }else{
            console.log(result)
          return res.json({
            orgs: result
          })
        }
      })
    });

    app.post('/addOrgRelation', (req, res) => {
        session=req.session;
        const userid = req.body.uID == '-1' ? session.userid : req.body.uID
        const orgs_query = `insert into new_schema.USER_SPONSOR_REL values (NULL, ${userid}, ${req.body.sponsorID});`;
        connection.query(orgs_query, function(err, result) {
          if(err){
            console.log(err);
          }else{
            res.send({success: true})
          }
        })
    });

      app.post('/removeOrgRelation', (req, res) => {
        session=req.session;
        const userid = req.body.uID == '-1' ? session.userid : req.body.uID
        const delete_query = `DELETE from new_schema.USER_SPONSOR_REL where uID = ${userid} AND sponsorID=${req.body.sponsorID};`;
        connection.query(delete_query, function(err, result) {
          if(err){
            console.log(err);
          }else{
            res.send({success: true})
          }
        })
    });
}