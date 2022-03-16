module.exports = function(app, connection){
    app.post('/toggle-active', (req, res) => {
      const active_query = `UPDATE new_schema.USER SET status = ${req.body.active} WHERE uID = ${req.body.uID};`;
      connection.query(active_query, function(err, result) {
        if(err){
            console.log(err);
        }
        else{
            res.send({success: true})
        }
      })
    });

    app.get('/get-acc-info', (req, res) => {
        session = req.session;
        userid = req.query.uID === '-1' ? session.userid : req.query.uID;
        const user_query = `SELECT fname, lname, username, email, phone from new_schema.USER where uID = ${userid};`;
        connection.query(user_query, function(err, result) {
            if(err) console.log(err);
            return res.json({
              user: result[0]
            })
        })
      });

    app.post('/update-account', (req, res) => {
        session = req.session;
        userid = req.body.uID === '-1' ? session.userid : req.body.uID;
        const update_query = `UPDATE new_schema.USER SET fname = '${req.body.fname}', lname = '${req.body.lname}', username = '${req.body.username}', email = '${req.body.email}', phone = '${req.body.phone}' WHERE uID = ${userid};`;
        connection.query(update_query, function(err, result) {
            if(err){
                console.log(err);
            }
            else{
                res.send({success: true})
            }
        })
    });
}