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
}