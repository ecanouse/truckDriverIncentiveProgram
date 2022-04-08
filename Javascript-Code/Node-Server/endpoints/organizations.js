module.exports = function(app, connection){
    app.post('/update-org', (req, res) => {
      session = req.session;
      const userid = req.body.uID === '-1' ? session.userid : req.body.uID;
          const update_query = `UPDATE new_schema.SPONSOR_ORG o INNER JOIN new_schema.USER_SPONSOR_REL r ON r.uID=${userid} AND o.sponsorID = r.sponsorID SET orgName = '${req.body.name}', pointsPerDollar = '${req.body.ppd}', street = '${req.body.street}', city = '${req.body.city}', zip = '${req.body.zip}', state = '${req.body.state}';`;
          connection.query(update_query, function(err, result) {
              if(err){
                  console.log(err);
              }
              else{
                  res.send({success: true})
              }
          })
  });

  app.post('/update-ppd', (req, res) => {
    session = req.session;
    const userid = req.body.uID === '-1' ? session.userid : req.body.uID;
        const update_query = `UPDATE new_schema.SPONSOR_ORG o INNER JOIN new_schema.USER_SPONSOR_REL r ON r.uID=${userid} AND o.sponsorID = r.sponsorID SET pointsPerDollar = '${req.body.ppd}';`;
        connection.query(update_query, function(err, result) {
            if(err){
                console.log(err);
            }
            else{
                res.send({success: true})
            }
        })
});

    app.get('/getOrganizations', (req, res) => {
      session=req.session;
      const userid = req.query.uID === '-1' ? session.userid : req.query.uID
      const orgs_query = `SELECT o.sponsorID, orgName, o.pointsPerDollar, o.street, o.city, o.state, o.zip from new_schema.SPONSOR_ORG o INNER JOIN new_schema.USER_SPONSOR_REL r where r.uID=${userid} AND o.sponsorID = r.sponsorID;`;
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