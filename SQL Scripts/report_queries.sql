use new_schema;

/* get driver apps */

select app.date, sp.orgName, dr.lname, dr.fname, app.status
	from APPLICATION as app, SPONSOR_ORG as sp, USER as dr
    where dr.uID = app.uID and sp.sponsorID = app.sponsorID;
    
/* get point changes */

-- statement with filters
select * from (
	select pnt.date, sp.orgName, dr.lname, dr.fname, pnt.pointValue, pnt.pointReason
		from POINT_ADJUSTMENT as pnt, SPONSOR_ORG as sp, DRIVER_POINTS as dp, USER as dr
		where pnt.sponsorID = sp.sponsorID and pnt.DPointID = dp.DPointID and dp.uID = dr.uID
) as log
where log.date between '2022-3-09' and '2022-3-11' and log.orgName = 'Walmart';

-- statement with no filters
select pnt.date, sp.orgName, dr.lname, dr.fname, pnt.pointValue, pnt.pointReason
from POINT_ADJUSTMENT as pnt, SPONSOR_ORG as sp, DRIVER_POINTS as dp, USER as dr
where pnt.sponsorID = sp.sponsorID and pnt.DPointID = dp.DPointID and dp.uID = dr.uID;

/* get password changes */
-- statement with no filters
select pw.date, usr.username, pw.changeType
	from PASSWORD_CHANGES as pw, USER as usr
    where pw.uID = usr.uID;
    
/* get login attempts */
-- need to add sponsor col

-- statement with filters 
select log.date, log.username, log.success from (
	select la.date, la.username, la.success, la.uID, u2s.sponsorID
		from LOGIN_ATTEMPTS as la, USER_SPONSOR_REL as u2s
        where la.uID = u2s.uID
	) as log;
   -- where log.sponsorID-- log.date between '2022-3-09' and '2022-3-11' and ;
    

-- statement with no filters
select la.date, la.username, la.success
	from LOGIN_ATTEMPTS as la


