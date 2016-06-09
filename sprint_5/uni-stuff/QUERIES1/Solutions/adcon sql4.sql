1. List the accomNo, address1, city and postcode of all the accommodation held. If the accommodation is a flat then the ownersName and ownersTelNo attributes should be displayed.

select a.accomNo, a.address1, city, postCode, ownersName, ownersTelNo
from Accommodation a
left join FLAT on a.accomNo = FLAT.accomNo;

/*
select a.accomNo, a.address1, city, postCode, ownersName, ownersTelNo
from Accommodation a, FLAT f
where ( a.accomNo = f.accomNo
or a.accomNo not in ( select accomNo from FLAT ))
group by a.accomNo
;
*/


2. Same as above, but if it’s a flat list the ownersName and ownersTelNo and if it’s a Hall list the hName and mgrStaffNo attributes.

select a.accomNo, a.address1, city, postCode, ownersName, ownersTelNo, hName, mgrStaffNo
from Accommodation a
left join FLAT on a.accomNo = FLAT.accomNo
left join HALL on a.accomNo = HALL.accomNo;


3. For each Flat, list the placeNo, roomNo and accommodation address, city and postcode. If the room has a  lease, then the leaseNo, dateEnter and dateLeave attributes should be displayed. Order the output by placeNo.

select r.placeNo, roomNo, address1, city, postCode, leaseNo, dateEnter, dateLeave
from Accommodation a, Lease l
right join Room as r on l.placeNo = r.placeNo
where r.accomNo = a.accomNo
order by r.placeNo;


4. Create a query that shows which flats have had no inspection.

select accomNo
from FLAT f
where f.accomNo not in ( select accomNo from Inspection );


