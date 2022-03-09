module.exports = function(app, connection){
    function addAdjustment(req) {
        const driver_point_query = `SELECT DPointID from new_schema.DRIVER_POINTS where uID = ${req.body.driver} AND sponsorID=${session.sponsorid};`;
        connection.query(driver_point_query, function(err, result) {
            if(err) {
                console.log(err);
                res.send({success: false})
            }
            const today = new Date();
            const date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
            const value = req.body.add ? req.body.value : req.body.value * -1
            const adjust_query = `insert into new_schema.POINT_ADJUSTMENT values (NULL, "${req.body.comment}", ${value}, "${date}", ${result[0].DPointID}, ${session.sponsorid});`;
            connection.query(adjust_query, function(err, result) {
                if(err) {
                    console.log(err);
                    res.send({success: false})
                }
            })
        })
    }

    app.post('/point-assignment', (req, res) => {
        console.log('Recieved point assignment');
        console.log(req.body);
        session=req.session;

        const exists_query = `SELECT EXISTS (SELECT * from new_schema.DRIVER_POINTS where uID = ${req.body.driver} AND sponsorID=${session.sponsorid}) as 'is_exist';`;
        connection.query(exists_query, function(err, result) {
            if(err) {
                console.log(err);
                res.send({success: false})
            }
            console.log(result[0].is_exist);

            if(result[0].is_exist===0){
                const value = req.body.add ? req.body.value : req.body.value * -1;
                const points_query = `insert into new_schema.DRIVER_POINTS values (NULL, ${req.body.driver}, ${value}, ${session.sponsorid});`;
                connection.query(points_query, function(err, result) {
                    if(err) {
                        console.log(err);
                        console.log("YO")
                        res.send({success: false})
                    }else{
                        addAdjustment(req)
                    }
                })
            }else{
                const driver_point_query = `SELECT * from new_schema.DRIVER_POINTS where uID = ${req.body.driver} AND sponsorID=${session.sponsorid};`;
                connection.query(driver_point_query, function(err, result) {
                    const newPoints = req.body.add ? (parseInt(result[0].totalPoints) + parseInt(req.body.value)) : (parseInt(result[0].totalPoints) - parseInt(req.body.value));
                    const points_query = `update new_schema.DRIVER_POINTS set totalPoints = ${newPoints} where uID = ${req.body.driver} AND sponsorID=${session.sponsorid};`;
                    connection.query(points_query, function(err, result) {
                        if(err) {
                            console.log(err);
                            res.send({success: false})
                        }else{
                            addAdjustment(req)
                        }
                    })
                })
            }
        })
        res.send({success: true})
    });
}