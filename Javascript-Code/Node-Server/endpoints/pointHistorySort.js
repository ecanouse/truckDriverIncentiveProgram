module.exports = function(app, connection){

    
const today = "select pointValue, pointReason, date from new_schema.POINT_ADJUSTMENT where date >= now()";
const sevenDays = "select pointValue, pointReason, date from new_schema.POINT_ADJUSTMENT where date >= now() -interval 7 day";
const thirtyDays = "select pointValue, pointReason, date from new_schema.POINT_ADJUSTMENT where date >= now() -interval 30 day";

app.get('/gets', (req, res) => {
    session=req.session;
    const driver = req.query.driver === '-1' ? session.userid : req.query.driver;
    console.log("DRIVERQ: " + req.query.driver)
    console.log("DRIVER: " + driver)
    const total_query = `SELECT DPointID, totalPoints, sponsorID from new_schema.DRIVER_POINTS where uID = ${driver};`;
    connection.query(total_query, function(err, result) {
        if(err) {
            console.log(err);
            res.send({success: false})
        }else{
            var ret = result;
            result.map((r,i) => {
                const adjustments_query = `SELECT * from new_schema.POINT_ADJUSTMENT where DPointID = ${r.DPointID};`;
                connection.query(adjustments_query, function(err, result2) {
                    if(err) {
                        console.log(err);
                        res.send({success: false})
                    }else{
                        ret[i].adjustments = result2
                        console.log(ret)
                        if(i===ret.length-1){
                            return res.json({
                                Points: ret
                            })
                        }
                    }
                })
            })
        }
    })
});
}