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
        });
        res.send({success: true})
    });
}