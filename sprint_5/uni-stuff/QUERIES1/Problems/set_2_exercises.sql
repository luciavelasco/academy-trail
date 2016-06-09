# Set 2

#-- 1. List the studentID, fName, lName and next of kin ContactTelNo of all male students. Order the list by fName within lName.

#-- 2. List the fName, lName, nameOfDepartment, extno of the AdvisorsOfStudies together with the fName,lName of the students they advise for all  students whose lName starts with the letter ‘P’ or ‘W’. Order the list by Student fName within lName.

#-- 3.  List the various courseTitles, and for each course with the number of female students registered. Order the list by descending counts.

#-- 4.  List all the female student’s fName and lName, and their next of kin details . Format the output to present this is the best possible way

#-- 5.  List the fName and lName student attributes for all students on the course with courseTitle ‘Software Engineering’

SELECT
	Student.studentid,
	fName,
	lName,
	contactTelNo
FROM Student JOIN NextOfKin ON Student.studentid=NextOfKin.studentid
WHERE sex = 'm'
ORDER BY lName, fName;

SELECT
	adv.fname,
	adv.lname,
	adv.nameofdepartment,
	adv.extno,
	stu.fname,
	stu.lname
FROM AdvisorOfStudies adv JOIN Student stu ON stu.advisorno=adv.advisorno
WHERE stu.lname RLIKE '^P|^W'
ORDER BY lName, fName;

SELECT
	coursetitle,
	COUNT(fname)
FROM Student s JOIN Course c ON c.courseno = s.courseno
WHERE sex = 'f'
GROUP BY coursetitle
ORDER BY COUNT(fname) DESC;

SELECT
	n.studentid as student_id,
	CONCAT(s.fname,	' ', s.lname) as student_name,
	n.name as next_of_kin,
	n.contacttelno as contact_number,
	n.address1 as address,
	n.city as city,
	n.postcode as postcode
FROM Student s JOIN NextOfKin n ON s.studentid=n.studentid
WHERE sex='f';

SELECT
	s.fname,
	s.lname
FROM Student s JOIN Course c ON s.courseNo = c.courseNo
WHERE courseTitle = 'Software Engineering';
