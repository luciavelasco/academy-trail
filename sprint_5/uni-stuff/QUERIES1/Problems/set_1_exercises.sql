#Set 1

#-- 1. List the studentid and lName of all students whose homeCity is Portsmouth. Order the output by studentid. For student Susan Kemp, the homeCity is stored as ‘portsmouth’ rather than ‘Portsmouth’. Use Google to look up details of the LOWER function and then use it to ensure that Susan Kemp is listed.
#-- Then repeat this exercise using the UPPER function instead of LOWER.

#-- 2. Look up  SUBSTR functions  using Google and use it to list  all students on the course with courseNo 1001 in the format lName,initial  e.g. Harris,A. Order the list by studentid

#-- 3. You are uncertain of the case of the attributes fName and lName stored in the database. List the studentid, lName and fName attributes of all students making sure that the last two attributes are in lower case with the first character capitalised.

#-- 4. List the studentid, fName, lName and dob of all students that have birthdays in May, June or July. Order  the output by dob.

#-- 5. List the studentid, fName, lName and dob of all students that have birthdays in 1983 or 1985. Order the output by dob.

#-- 6. List the studentid,  fName, lName and age measured in days(to the nearest day) of all male students. Order the list by the age in days. Again you will need to go to Google and look at date functions.

SELECT studentid, lName FROM Student
WHERE LOWER(homeCity) = 'portsmouth';

SELECT studentid, lName FROM Student
WHERE UPPER(homeCity) = 'portsmouth';

SELECT CONCAT(lName, ',', SUBSTRING(fName, 1, 1)) as name
FROM Student
WHERE courseNo = 1001
ORDER BY studentid;

SELECT studentid, CONCAT(UPPER(SUBSTRING(lName, 1, 1)), LOWER(SUBSTRING(lName, 2))) as lName, CONCAT(UPPER(SUBSTRING(fName, 1, 1)), LOWER(SUBSTRING(fName, 2))) as fName
FROM Student;

SELECT studentid, fName, lName, dob
FROM Student
WHERE EXTRACT(MONTH FROM dob) IN (05,06,07)
ORDER BY dob;

SELECT studentid, fName, lName, dob
FROM Student
WHERE EXTRACT(YEAR FROM dob) IN (1983, 1985)
ORDER BY dob;

SELECT studentid,  fName, lName, DATEDIFF(CURRENT_DATE(), dob) as age
FROM Student
WHERE sex = 'm'
ORDER BY age;