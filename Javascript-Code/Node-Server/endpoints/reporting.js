module.exports = function(app, connection){
    
    // AUDIT LOG REPORTS

    app.post('/getLoginAttempts', (req, res) => {

        console.log('Recieved Request for Audit Log Report')
        console.log(req.body)

        //Get login attempts info
        var query = "select la.date, la.username, la.success from LOGIN_ATTEMPTS as la"
        if( req.body.startDate != '' & req.body.orgName === '') {
            query = `select log.date, log.username, log.success from (
                select la.date, la.username, la.success, la.uID, u2s.sponsorID, sp.orgName
                    from LOGIN_ATTEMPTS as la, USER_SPONSOR_REL as u2s, SPONSOR_ORG as sp
                    where la.uID = u2s.uID and u2s.sponsorID = sp.sponsorID
                ) as log
                    where log.date between '`+ req.body.startDate +`' and '`+ req.body.endDate +`';`
        }
        else if( req.body.startDate === '' & req.body.orgName != '' ) {
            query = `select log.date, log.username, log.success from (
                select la.date, la.username, la.success, la.uID, u2s.sponsorID, sp.orgName
                    from LOGIN_ATTEMPTS as la, USER_SPONSOR_REL as u2s, SPONSOR_ORG as sp
                    where la.uID = u2s.uID and u2s.sponsorID = sp.sponsorID
                ) as log
                    where log.orgName = '`+ req.body.orgName +`';`
        }
        else if(req.body.startDate != '' & req.body.orgName != '') {
            query = `select log.date, log.username, log.success from (
                select la.date, la.username, la.success, la.uID, u2s.sponsorID, sp.orgName
                    from LOGIN_ATTEMPTS as la, USER_SPONSOR_REL as u2s, SPONSOR_ORG as sp
                    where la.uID = u2s.uID and u2s.sponsorID = sp.sponsorID
                ) as log
                    where log.date between '`+ req.body.startDate +`' and '`+ req.body.endDate +`' and log.orgName = '`+ req.body.orgName +`';`
        }
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

        const sdate = new Date(req.body.startDate);
        const formattedStartDate = sdate.getFullYear()+'-'+(sdate.getMonth()+1)+'-'+sdate.getDate();
        const edate = new Date(req.body.endDate);
        const formattedEndDate = edate.getFullYear()+'-'+(edate.getMonth()+1)+'-'+edate.getDate();

        //Get password change info
        query = "select pw.date, usr.username, pw.changeType from PASSWORD_CHANGES as pw, USER as usr where pw.uID = usr.uID;"
        if( req.body.startDate != '' & req.body.orgName === '') {
            query = `select pwl.date, pwl.username, pwl.changeType from (
                select pw.date, usr.username, pw.changeType, sp.orgName
                    from PASSWORD_CHANGES as pw, USER as usr, USER_SPONSOR_REL as u2s, SPONSOR_ORG as sp
                    where pw.uID = usr.uID and u2s.uID = usr.uID and u2s.sponsorID = sp.sponsorID
            ) as pwl
                where pwl.date between '`+formattedStartDate+`' and '`+formattedEndDate+`';`;
        }
        else if( req.body.startDate === '' & req.body.orgName != '' ) {
            query = `select pwl.date, pwl.username, pwl.changeType from (
                select pw.date, usr.username, pw.changeType, sp.orgName
                    from PASSWORD_CHANGES as pw, USER as usr, USER_SPONSOR_REL as u2s, SPONSOR_ORG as sp
                    where pw.uID = usr.uID and u2s.uID = usr.uID and u2s.sponsorID = sp.sponsorID
            ) as pwl
                where pwl.orgName = '`+req.body.orgName+`';`;
        }
        else if(req.body.startDate != '' & req.body.orgName != '') {
            query =  `select pwl.date, pwl.username, pwl.changeType from (
                select pw.date, usr.username, pw.changeType, sp.orgName
                    from PASSWORD_CHANGES as pw, USER as usr, USER_SPONSOR_REL as u2s, SPONSOR_ORG as sp
                    where pw.uID = usr.uID and u2s.uID = usr.uID and u2s.sponsorID = sp.sponsorID
            ) as pwl
                where pwl.date between '`+formattedStartDate+`' and '`+formattedEndDate+`' and pwl.orgName = '`+req.body.orgName+`';`;
        }
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

        // TODO
        // then add invoice & sales reporting
        // build basic sales frontend
        // report summary sales info for drivers
        // report detailed sales info for drivers
        // add filtering inputs? maybe do this before
        // add by sponsor sales reports
        // add invoices -- similar to by sponsor

        // add all that but for sponsors
        // add session compatability to all this
        // get rid of console.log()s


        const sdate = new Date(req.body.startDate);
        const formattedStartDate = sdate.getFullYear()+'-'+(sdate.getMonth()+1)+'-'+sdate.getDate();
        const edate = new Date(req.body.endDate);
        const formattedEndDate = edate.getFullYear()+'-'+(edate.getMonth()+1)+'-'+edate.getDate();

        //get point adjustment info
        query = "select pnt.date, sp.orgName, dr.lname, dr.fname, pnt.pointValue, pnt.pointReason from POINT_ADJUSTMENT as pnt, SPONSOR_ORG as sp, DRIVER_POINTS as dp, USER as dr where pnt.sponsorID = sp.sponsorID and pnt.DPointID = dp.DPointID and dp.uID = dr.uID;"
        if( req.body.startDate != '' & req.body.orgName === '') {
            query = `select * from (
                select pnt.date, sp.orgName, dr.lname, dr.fname, pnt.pointValue, pnt.pointReason
                    from POINT_ADJUSTMENT as pnt, SPONSOR_ORG as sp, DRIVER_POINTS as dp, USER as dr where pnt.sponsorID = sp.sponsorID and pnt.DPointID = dp.DPointID and dp.uID = dr.uID
                    ) as log 
                        where DATE(log.date) between '`+ formattedStartDate +`' and '`+ formattedEndDate +`';`;
        }
        else if( req.body.startDate === '' & req.body.orgName != '' ) {
            query = `select * from (
                select pnt.date, sp.orgName, dr.lname, dr.fname, pnt.pointValue, pnt.pointReason
                    from POINT_ADJUSTMENT as pnt, SPONSOR_ORG as sp, DRIVER_POINTS as dp, USER as dr where pnt.sponsorID = sp.sponsorID and pnt.DPointID = dp.DPointID and dp.uID = dr.uID
                    ) as log 
                        where log.orgName = '`+ req.body.orgName +`';`;
        }
        else if(req.body.startDate != '' & req.body.orgName != '') {
            query =  `select * from (
                select pnt.date, sp.orgName, dr.lname, dr.fname, pnt.pointValue, pnt.pointReason
                    from POINT_ADJUSTMENT as pnt, SPONSOR_ORG as sp, DRIVER_POINTS as dp, USER as dr where pnt.sponsorID = sp.sponsorID and pnt.DPointID = dp.DPointID and dp.uID = dr.uID
                    ) as log 
                        where DATE(log.date) between '`+ formattedStartDate +`' and '`+ formattedEndDate +`' and log.orgName = '`+ req.body.orgName +`';`;
        }

        console.log("QUERY: " + query);
        connection.query(query, function(err, result) {
            if(err) {
                console.log(err);
                res.send({success:false})
            }
            else {
                console.log(result)
                res.send(result)

            }
        });

    });

    app.post('/getApplications', (req, res) => {

        console.log('Recieved Request for Audit Log Report')
        console.log(req.body)

        const sdate = new Date(req.body.startDate);
        const formattedStartDate = sdate.getFullYear()+'-'+(sdate.getMonth()+1)+'-'+sdate.getDate();
        const edate = new Date(req.body.endDate);
        const formattedEndDate = edate.getFullYear()+'-'+(edate.getMonth()+1)+'-'+edate.getDate();

        //get application info
        query = `select app.date, sp.orgName, usr.lname, usr.fname, app.status 
        from APPLICATION as app, SPONSOR_ORG as sp, USER as usr
        where app.uID = usr.uID and app.sponsorID = sp.sponsorID;`;

        if( req.body.startDate != '' & req.body.orgName === '') {
            query = `select log.date, log.orgName, log.lname, log.fname, log.status from (
                select app.date, sp.orgName, usr.lname, usr.fname, app.status 
                    from APPLICATION as app, SPONSOR_ORG as sp, USER as usr
                    where app.uID = usr.uID and app.sponsorID = sp.sponsorID
            ) as log
                where log.date between '${formattedStartDate}' and '${formattedEndDate}';`;
        }
        else if( req.body.startDate === '' & req.body.orgName != '' ) {
            query = `select log.date, log.orgName, log.lname, log.fname, log.status from (
                select app.date, sp.orgName, usr.lname, usr.fname, app.status 
                    from APPLICATION as app, SPONSOR_ORG as sp, USER as usr
                    where app.uID = usr.uID and app.sponsorID = sp.sponsorID
            ) as log
                where log.orgName = '${req.body.orgName}';`;
        }
        else if(req.body.startDate != '' & req.body.orgName != '') {
            query = `select log.date, log.orgName, log.lname, log.fname, log.status from (
                select app.date, sp.orgName, usr.lname, usr.fname, app.status 
                    from APPLICATION as app, SPONSOR_ORG as sp, USER as usr
                    where app.uID = usr.uID and app.sponsorID = sp.sponsorID
            ) as log
                where log.orgName = '${req.body.orgName}' and log.date between '${formattedStartDate}' and '${formattedEndDate}';`;
        }
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

    app.get('/getSponsors', (req, res) => {

        console.log('Recieved Request for Sponsor List')

        let query = 'select sp.orgName from SPONSOR_ORG as sp'

        connection.query(query, function(err, result) {
            if( err ) {
                console.log(err)
                res.send({success:false})
            }
            else {
                res.send(result)
            }
        });

    });


}