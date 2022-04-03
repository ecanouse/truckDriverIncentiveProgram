module.exports = function(app, connection){
    
    app.post('/getAuditLogReport', (req, res) => {

        console.log('Recieved Request for Audit Log Report')
        console.log(req.body)

        const query = "select la.date, la.username, la.success from LOGIN_ATTEMPTS as la"
        connection.query(query, function(err, result) {
            if(err) {
                console.log(err);
                res.send({success:false})
            }
            else {

                res.send(result);

            }
        })


    });

    // app.post('/point-assignment', (req, res) => {
    //     console.log('Recieved point assignment');
    //     console.log(req.body);
    //     session=req.session;

    //     const org_query = `SELECT sponsorID from new_schema.USER_SPONSOR_REL where uID = ${session.userid};`;
    //     connection.query(org_query, function(err, result) {
    //         if(err) {
    //             console.log(err);
    //             res.send({success: false})
    //         }else{
    //             sponsorID = result[0].sponsorID;
    //             const exists_query = `SELECT EXISTS (SELECT * from new_schema.DRIVER_POINTS where uID = ${req.body.driver} AND sponsorID=${sponsorID}) as 'is_exist';`;
    //             connection.query(exists_query, function(err, result) {
    //                 if(err) {
    //                     console.log(err);
    //                     res.send({success: false})
    //                 }
    //                 console.log(result[0].is_exist);
        
    //                 if(result[0].is_exist===0){
    //                     const value = req.body.add ? req.body.value : req.body.value * -1;
    //                     const points_query = `insert into new_schema.DRIVER_POINTS values (NULL, ${req.body.driver}, ${value}, ${sponsorID});`;
    //                     connection.query(points_query, function(err, result) {
    //                         if(err) {
    //                             console.log(err);
    //                             console.log("YO")
    //                             res.send({success: false})
    //                         }else{
    //                             addAdjustment(req, sponsorID)
    //                         }
    //                     })
    //                 }else{
    //                     const driver_point_query = `SELECT * from new_schema.DRIVER_POINTS where uID = ${req.body.driver} AND sponsorID=${sponsorID};`;
    //                     connection.query(driver_point_query, function(err, result) {
    //                         const newPoints = req.body.add ? (parseInt(result[0].totalPoints) + parseInt(req.body.value)) : (parseInt(result[0].totalPoints) - parseInt(req.body.value));
    //                         const points_query = `update new_schema.DRIVER_POINTS set totalPoints = ${newPoints} where uID = ${req.body.driver} AND sponsorID=${sponsorID};`;
    //                         connection.query(points_query, function(err, result) {
    //                             if(err) {
    //                                 console.log(err);
    //                                 res.send({success: false})
    //                             }else{
    //                                 addAdjustment(req, sponsorID)
    //                             }
    //                         })
    //                     })
    //                 }
    //             })
    //         }
    //     })
    //     res.send({success: true})
    // });

}