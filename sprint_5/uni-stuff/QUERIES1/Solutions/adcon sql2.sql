-- 1.List the studentID, fName, lName and next of kin ContactTelNo of all male students. Order the list by fName within lName.

select s.studentID, fName, lName, contactTelNo
from Student s, NextOfKin n
where sex = "m"
and s.studentID = n.studentID
order by fName, lName;

-- 2.	List the fName, lName, nameOfDepartment, extno of the AdvisorsOfStudies together with the fName,lName of the students they advise for all  students whose lName starts with the letter P or W. Order the list by Student fName within lName.

select a.fName, a.lName, nameOfDepartment, extno, s.fName, s.lName
from AdvisorOfStudies a, Student s
where UPPER(SUBSTR(s.lName, 1, 1)) in ("W", "P")
and s.advisorNo = a.advisorNo
order by s.fName, s.lName;

-- 3.	List the various courseTitles, and for each course with the number of female students registered. Order the list by descending counts.

select courseTitle, count(studentID)
from Course c, Student s
where lower(s.sex) = "f"
and s.courseNo = c.courseNo
group by s.courseNo
order by count(studentID) desc;

-- 4.	List all the female students fName and lName, and their next of kin details . Format the output to present this is the best possible way

select CONCAT(UPPER(SUBSTR(fName, 1, 1)), LOWER(SUBSTR(fName, 2)), " ", UPPER(SUBSTR(lName, 1, 1)), LOWER(SUBSTR(lName, 2))) as "Student Name", name as "Next of Kin Name", CONCAT(address1, ", ", city, ", ", UPPER(postcode)) as "Next of Kin Address", CONCAT(SUBSTR(contactTelNo, 1, 5), " ", SUBSTR(contactTelNo, 6)) as "Next of Kin Contact Number"
from Student s, NextOfKin n
where LOWER(sex) = "f" 
and s.studentID = n.studentID
order by s.lName;

-- 5.	List the fName and lName student attributes for all students on the course with courseTitle Software Engineering

select CONCAT(UPPER(SUBSTR(fName, 1, 1)), LOWER(SUBSTR(fName, 2)), " ", UPPER(SUBSTR(lName, 1, 1)), LOWER(SUBSTR(lName, 2))) as "Student Name"
from Student s, Course c
where courseTitle = "Software Engineering" 
and s.courseNo = c.courseNo
order by s.lName;