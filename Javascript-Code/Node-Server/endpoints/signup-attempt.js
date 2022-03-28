const usertype = require("./usertype");

module.exports = function( app, connection ) {
    app.post('/signup-attempt', (req, res) => {

        console.log('Received signup attempt');
        console.log(req.body);
        // get input
        let username = req.body.username;
        let password = req.body.password;
        let firstname = req.body.firstname;
        let lastname = req.body.lastname;
        let confirmpassword = req.body.confirmpassword;
        let email = req.body.email;
        let phone = req.body.phone;
        let code = req.body.code;
      
        //make sure user entered each required field
        if( username && password && firstname && lastname && confirmpassword && email && phone && code) {
          if(confirmpassword == password){
            //check to make sure that username and email are not repeats of other accounts
            qstr = "SELECT COUNT (*) AS count FROM new_schema.USER WHERE username = '"+username+"' OR email = '"+email+"'";
            connection.query(qstr, function(err, result, fields) {
              if(err) console.log(err);
              console.log(result);
              
              //const repeat = Object.keys(result).length === 0;
              string = JSON.stringify(result);
              json = JSON.parse(string);
              count = json[0].count;
      
              uType = -1;
              if(count > 0){
                res.send({success: false, msg: "Username or email belongs to another account"});
                console.log('repeat user');
                res.end()
              }else{
                uType = -1;
                if(code == 0000){
                  uType = 0;
                }else if(code == 1111){
                  uType = 1;
                }else if(code == 1730){
                  uType = 2;
                }else{
                  //TODO check database for code to see if it matches.
                  uType = 1;
                }
                encryptPass = crypt.getHash(password);
                //console.log('Got sign up information.');
<<<<<<< HEAD
                qstr = "INSERT INTO new_schema.USER (lname, fname, username, password, email, phone, usertype, status) VALUES ('"+lastname+"', '"+firstname+"', '"+username+"', '"+encryptPass+"', '"+email+"', '"+phone+"', 0, 1)";
=======
                qstr = "INSERT INTO new_schema.USER (lname, fname, username, password, email, phone, usertype) VALUES ('"+lastname+"', '"+firstname+"', '"+username+"', '"+encryptPass+"', '"+email+"', '"+phone+"', '"+uType+"')";
>>>>>>> loginbackend
                connection.query(qstr, function(err, result, fields) {
                  if(err) console.log(err);
                  console.log(result);

                  session=req.session;
                  session.userid=result.insertId;

                  res.send({success: true, msg: "Creating Account...", uType: uType});
                });
              }

            });
            
      
          }else {
            res.send({success: false, msg: "Passwords do not match"});
            console.log('passwords do not match');
            res.end()
          }
        }else{
          res.send({success: false, msg: "Please fill out all fields"});
          console.log('no sign up info.');
          res.end()
        }
      });

      app.get('/logout', (req, res) => {
        req.session.destroy();
        res.send({success: true});
      });
}