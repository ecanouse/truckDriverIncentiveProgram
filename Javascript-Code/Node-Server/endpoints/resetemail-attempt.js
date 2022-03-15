module.exports = function( app, connection ) {
    app.post('/resetemail-attempt', (req, res) => {
        console.log("Received email for password reset.");
        console.log(req.body);

        let email = req.body.username;

        const transporter = nodemailer.createTransport({
            service: 'gmail',
            auth: {
                user: 'madlads4910@gmail.com',
                pass: '4910madlads!'
            }
        })

        if(email){
            qstr = "SELECT COUNT (*) AS count FROM new_schema.USER WHERE email = '"+email+"'";
            connection.query(qstr, function(err, result, fields) {
                if(err) console.log(err);
                console.log(result);
                msgText = "Your reset code is: " + 123456 + ".  This code will expire in 24 hours";
                const mailOptions = {
                    from: 'madlads4910@gmail.com',
                    to: email,
                    subject: 'Reset Password',
                    text: msgText
                }

                transporter.sendMail(mailOptions, function(error, info){
                    if(error){
                        console.log(error);
                    }else{
                        console.log('Email sent: ' + info.response)
                    }
                    
                });



                res.send({success: true, msg: "Email has been sent."});
              });
        }else{
            res.semd({success: false, msg: "Please input an email"});
            console.log("empty email");
            res.end()
        }





    });
}