-- 1. List the studentid and lName of all students whose homeCity is Portsmouth. Order the output by studentid. For student Susan Kemp, the homeCity is stored as portsmouth rather than Portsmouth. Use Google to look up details of the LOWER function and then use it to ensure that Susan Kemp is listed. 

-- Then repeat this exercise using the UPPER function instead of LOWER.

SELECT studentid, lName
FROM Student
WHERE LOWER(homeCity) = 'portsmouth'
order by studentid;

-- --

SELECT studentid, lName
FROM Student
WHERE UPPER(homeCity) = 'PORTSMOUTH'
order by studentid;

-- 2. Look up  SUBSTR functions  using Google and use it to list  all students on the course with courseNo 1001 in the format lName,initial  e.g. Harris,A. Order the list by studentid
 
select CONCAT(lName, ",", SUBSTR(fName, 1, 1)) as "Student Name"
from Student
where courseNo = 1001;

-- 3. You are uncertain of the case of the attributes fName and lName stored in the database. List the studentid, lName and fName attributes of all students making sure that the last two attributes are in lower case with the first character capitalised.

select studentid as 'Student ID', CONCAT(UPPER(SUBSTR(fName, 1, 1)), LOWER(SUBSTR(fName FROM 2))) as 'First Name', CONCAT(UPPER(SUBSTR(lName, 1, 1)), LOWER(SUBSTR(lName FROM 2))) as 'Last Name'
from Student;

-- 4. List the studentid, fName, lName and dob of all students that have birthdays in May, June or July. Order  the output by dob.

select studentid as 'Student ID', CONCAT(UPPER(SUBSTR(fName, 1, 1)), LOWER(SUBSTR(fName FROM 2))) as 'First Name', CONCAT(UPPER(SUBSTR(lName, 1, 1)), LOWER(SUBSTR(lName FROM 2))) as 'Last Name', dob as 'Date of Birth'
from Student
where MONTHNAME(dob) IN ('May', 'June', 'July')
order by dob;

-- 5. List the studentid, fName, lName and dob of all students that have birthdays in 1983 or 1985. Order the output by dob.

select studentid as 'Student ID', CONCAT(UPPER(SUBSTR(fName, 1, 1)), LOWER(SUBSTR(fName FROM 2))) as 'First Name', CONCAT(UPPER(SUBSTR(lName, 1, 1)), LOWER(SUBSTR(lName FROM 2))) as 'Last Name', dob as 'Date of Birth'
from Student
where YEAR(dob) IN (1983, 1985)
order by dob;

-- 6. List the studentid,  fName, lName and age measured in days(to the nearest day) of all male students. Order the list by the age in days. Again you will need to go to Google and look at date functions.

select studentid as 'Student ID', CONCAT(UPPER(SUBSTR(fName, 1, 1)), LOWER(SUBSTR(fName FROM 2))) as 'First Name', CONCAT(UPPER(SUBSTR(lName, 1, 1)), LOWER(SUBSTR(lName FROM 2))) as 'Last Name', DATEDIFF(CURDATE(), dob) as 'Age in Days'
from Student
where sex = 'm'
order by dob;