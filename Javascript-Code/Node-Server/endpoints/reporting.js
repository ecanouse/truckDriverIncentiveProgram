module.exports = function(app, connection){
    
    app.post('/getLoginAttempts', (req, res) => {

        console.log('Recieved Request for Audit Log Report')
        console.log(req.body)

        //Get login attempts info
        var query = "select la.date, la.username, la.success from LOGIN_ATTEMPTS as la"
        connection.query(query, function(err, result) {
            if(err) {
                console.log(err);
                res.send({success:false})
            }
            else {

                res.send(result);

            }
        });

    });


    app.post('/getPasswordChanges', (req, res) => {

        console.log('Recieved Request for Audit Log Report')
        console.log(req.body)

        //Get password change info
        query = "select pw.date, usr.username, pw.changeType from PASSWORD_CHANGES as pw, USER as usr where pw.uID = usr.uID;"
        connection.query(query, function(err, result) {
            if(err) {
                console.log(err);
                res.send({success:false})
            }
            else {

                res.send(result);

            }
        });

    });

    app.post('/getPointAdjustments', (req, res) => {

        console.log('Recieved Request for Audit Log Report')
        console.log(req.body)

        //get point adjustment info
        query = "select pnt.date, sp.orgName, dr.lname, dr.fname, pnt.pointValue, pnt.pointReason from POINT_ADJUSTMENT as pnt, SPONSOR_ORG as sp, DRIVER_POINTS as dp, USER as dr where pnt.sponsorID = sp.sponsorID and pnt.DPointID = dp.DPointID and dp.uID = dr.uID;"
        connection.query(query, function(err, result) {
            if(err) {
                console.log(err);
                res.send({success:false})
            }
            else {

                res.send(result)

            }
        });

    });

    app.post('/getApplications', (req, res) => {

        console.log('Recieved Request for Audit Log Report')
        console.log(req.body)

        //get application info
        query = "select app.date, sp.orgName, dr.lname, dr.fname, app.status from APPLICATION as app, SPONSOR_ORG as sp, USER as dr where dr.uID = app.uID and sp.sponsorID = app.sponsorID;"
        connection.query(query, function(err, result) {
            if(err) {
                console.log(err);
                res.send({success:false})
            }
            else {

                res.send(result)

            }
        });

    });




    // testing new local repo creation
    


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