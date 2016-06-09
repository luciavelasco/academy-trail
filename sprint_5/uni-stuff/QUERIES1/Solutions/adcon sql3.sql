1.	List the studentid, fName, lName and next of kin ContactTelNo of all female students. Order the list by fName within lName.

select s.studentID, fName, lName, contactTelNo
from Student s, NextOfKin n
where s.studentID = n.studentID
and lower(sex) = "f"
order by fName, lName;

2.	List the fName, lName, nameOfDepartment, extno of the AdvisorsOfStudies together with the fName,lName of the students they advise for all  students whose lName starts with the letter ‘P’ or ‘W’. Order the list by Student fName within lName.

select a.fName, a.lName, nameOfDepartment, extno, s.fName, s.lName
from AdvisorOfStudies a, Student s
where UPPER(SUBSTR(s.lName, 1, 1)) in ("W", "P")
and s.advisorNo = a.advisorNo
order by s.fName, s.lName;

3.   Count the number of students registered on the University Accommodation Systems for each course.


select c.courseTitle, count(studentID)
from Student s
join Course as c on s.courseNo = c.courseNo
group by s.courseNo
order by count(studentID) desc;

4.	In question 3, if there were no students on a particular course, then the course wasn’t listed e.g. Business Systems. Change the SQL statement so that Business Systems is listed with a count value of 0. 

INSERT INTO Course VALUES
(1002,'Business Systems','Peter Parker','3261','BT3.7','Computing');


select c.courseTitle, count(studentID)
from Student s
right join Course as c on s.courseNo = c.courseNo
group by s.courseNo
order by count(studentID) desc;

-- right join to show all entries in course table, regardless of if an entry in the studen table matches.

5.	List all the leases associated with the student whose lName is Kemp. Display the attributes leaseNo, semester, datePaid, and paymentDue and order the output by datePaid ascending.

select l.leaseNo, semester, datePaid, paymentDue
from Lease l, Invoice i
where studentID in (
	select studentID
	from Student
	where lName = "Kemp" )
and l.leaseNo = i.leaseNo;

OR

select l.leaseNo, semester, datePaid, paymentDue
from Lease l, Invoice i, Student s
where s.lName = "Kemp"
and s.studentID = l.studentID
and l.leaseNo = i.leaseNo;

6.	For each Flat, list the placeNo, roomNo and accommodation address, city and postcode. If the room has a  lease, then the leaseNo, dateEnter and dateLeave attributes should be displayed, otherwise nulls should be shown. Order the output by placeNo.

select r.placeNo, roomNo, address1, city, postCode, leaseNo, dateEnter, dateLeave
from Accommodation a, Lease l
right join Room as r on l.placeNo = r.placeNo
where r.accomNo = a.accomNo
order by r.placeNo;

















