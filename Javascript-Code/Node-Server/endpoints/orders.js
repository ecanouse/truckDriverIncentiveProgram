const nodemailer = require("nodemailer");

module.exports = function(app, connection){
    app.post('/create-order', (req, res) => {
        session = req.session
        const today = new Date();
        const date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
        const order_query = `INSERT INTO new_schema.ORDER (uID, status, total, date) VALUES (${session.userid}, "pending", ${req.body.total}, "${date}")`;
        connection.query(order_query, function(err, result, fields) {
            if(err) console.log(err);
            let orderId = result.insertId;
            req.body.cart.map((item, i) => {
                const item_query = `INSERT INTO new_schema.ORDER_ITEMS (listingId, orderID, name, price, quantity) VALUES (${item.listingId}, ${orderId}, "${item.name}", ${item.price}, ${req.body.quantity[i]})`;
                connection.query(item_query, function(err, result, fields) {
                    if(err) console.log(err);
                });
            })
            const email_query = `SELECT email from new_schema.USER where uid=${session.userid};`;
            connection.query(email_query, function(err, result) {
                if(err) console.log(err);
                const email=result[0].email;
                const transporter = nodemailer.createTransport({
                    service: 'gmail',
                    auth: {
                        user: 'madlads4910@gmail.com',
                        pass: '4910madlads!'
                    }
                })
                msgText = `An order has been placed by your account.\n\nDetails:\n-Sponsor: ${req.body.sponsorName}\n-Date: ${date}\n-Price: ${req.body.total}\n-Balance: ${req.body.points-req.body.total}`;
                const mailOptions = {
                    from: 'madlads4910@gmail.com',
                    to: email,
                    subject: 'Order Confirmation',
                    text: msgText
                }
    
                transporter.sendMail(mailOptions, function(error, info){
                    if(error){
                        console.log(error);
                    }else{
                        console.log('Email sent: ' + info.response)
                    }
                    
                });
            })

        });
        res.send({success: true})
    });
}