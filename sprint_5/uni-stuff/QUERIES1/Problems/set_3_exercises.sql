# Set 3

#-- 1.  List the studentid, fName, lName and next of kin ContactTelNo of all female students. Order the list by fName within lName.

SELECT s.studentid, fName, lName, contacttelno
FROM Student s JOIN NextOfKin n ON s.studentid=n.studentid
WHERE sex = 'f'
ORDER BY lname, fname;

#-- 2.  List the fName, lName, nameOfDepartment, extno of the AdvisorsOfStudies together with the fName,lName of the students they advise for all  students whose lName starts with the letter ‘P’ or ‘W’. Order the list by Student fName within lName.

SELECT
    adv.fname,
    adv.lname,
    adv.nameofdepartment,
    adv.extno,
    stu.fname,
    stu.lname
FROM AdvisorOfStudies adv JOIN Student stu ON stu.advisorno=adv.advisorno
WHERE stu.lname RLIKE '^P|^W';

#-- 3.   Count the number of students registered on the University Accommodation Systems for each course.

SELECT
	c.courseTitle,
	COUNT(s.fname)
FROM Lease l
	JOIN Student s ON l.studentid = s.studentid
	JOIN Course c ON s.courseNo = c.courseNo
GROUP BY courseTitle;

-- 4.  In question 3, if there were no students on a particular course, then the course wasn’t listed e.g. Business Systems. Change the SQL statement so that Business Systems is listed with a count value of 0. 
/*-----------------------*/
SELECT
	c.courseTitle,
	COUNT(s.fname)
FROM Lease l
	JOIN Student s ON l.studentid = s.studentid
	RIGHT JOIN Course c ON s.courseNo = c.courseNo
GROUP BY courseTitle;

-- 5.  List all the leases associated with the student whose lName is Kemp. Display the attributes leaseNo, semester, datePaid, and paymentDue and order the output by datePaid ascending.


-- 6.  For each Flat, list the placeNo, roomNo and accommodation address, city and postcode. If the room has a  lease, then the leaseNo, dateEnter and dateLeave attributes should be displayed, otherwise nulls should be shown. Order the output by placeNo.


