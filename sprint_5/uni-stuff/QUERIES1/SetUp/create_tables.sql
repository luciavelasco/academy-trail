/*Creates Accommodation Office tables  */
/* create the tables */
​
CREATE TABLE Course (
 courseNo INTEGER,
 courseTitle VARCHAR(20) NOT NULL,
 courseLeader VARCHAR(20) NOT NULL,
 leadersExtnNo VARCHAR(4),
 leadersOfficeNo VARCHAR(10) NOT NULL,
 department VARCHAR(20) NOT NULL,
 CONSTRAINT pCourse PRIMARY KEY(courseNo)
);
​
CREATE TABLE AdvisorOfStudies (
 advisorNo INTEGER,
 fName VARCHAR(20) NOT NULL,
 lName VARCHAR(20) NOT NULL,
 position VARCHAR(15) NOT NULL,
 nameOfDepartment VARCHAR(20) NOT NULL,
 extno VARCHAR(4) NOT NULL,
 officeNo VARCHAR(10) NOT NULL,	
 CONSTRAINT pAdvisorOfStudies PRIMARY KEY(advisorNo)
);
​
CREATE TABLE Student (
 studentid INTEGER,
 fName VARCHAR(20) NOT NULL,
 lName VARCHAR(20) NOT NULL,
 homeAddress1 VARCHAR(20) NOT NULL,
 homeCity VARCHAR(20) NOT NULL,
 homePostCode VARCHAR(8) NOT NULL,
 dob DATE NOT NULL,
 sex CHAR NOT NULL,
 courseNo INTEGER NOT NULL,
 advisorNo INTEGER NOT NULL,
 CONSTRAINT pStudent PRIMARY KEY(studentid),
 CONSTRAINT cSex1 CHECK (LOWER(sex) IN ('m','f')),
 CONSTRAINT fStudent1 FOREIGN KEY(courseNo) REFERENCES Course(courseNo),
 CONSTRAINT fStudent2 FOREIGN KEY(advisorNo) REFERENCES AdvisorOfStudies(advisorNo)
);
​
CREATE TABLE NextOfKin (
 studentid INTEGER,
 name VARCHAR(20) NOT NULL,			
 address1 VARCHAR(20) NOT NULL,
 city VARCHAR(20) NOT NULL,
 postcode VARCHAR(8) NOT NULL,
 contactTelNo VARCHAR(11) NOT NULL,
 CONSTRAINT pNextOfKin PRIMARY KEY(studentid),
 CONSTRAINT fStudent3 FOREIGN KEY(studentid) REFERENCES Student(studentid)
);
​
​
​
CREATE TABLE AccommodationStaff (
 staffNo INTEGER,
 fName VARCHAR(20) NOT NULL,	
 lName VARCHAR(20) NOT NULL,	
 address1 VARCHAR(20) NOT NULL,	
 city VARCHAR(20) NOT NULL,	
 postcode VARCHAR(8) NOT NULL,	
 dob DATE NOT NULL,
 sex CHAR NOT NULL,	
 position VARCHAR(12) NOT NULL,
 location VARCHAR(20) NOT NULL,	
 CONSTRAINT pAccommodationStaff PRIMARY KEY(staffNo),
 CONSTRAINT cSex2 CHECK (LOWER(sex) IN ('m','f'))
);
​
CREATE TABLE Accommodation (
 accomNo INTEGER,
 address1 VARCHAR(20) NOT NULL,
 city VARCHAR(20) NOT NULL,
 postCode VARCHAR(8) NOT NULL,
 noOfRooms INTEGER NOT NULL,
 CONSTRAINT pAccommodation PRIMARY KEY(accomNo)
);
​
CREATE TABLE HALL (
 accomNo INTEGER,
 hName VARCHAR(20) NOT NULL,
 hTelNo VARCHAR(4) NOT NULL,	
 mgrStaffNo INTEGER NOT NULL,
 CONSTRAINT pHall PRIMARY KEY(accomNo),
 CONSTRAINT fAccommodationStaff1 FOREIGN KEY(mgrStaffNo) REFERENCES AccommodationStaff(staffNo)
);
​
CREATE TABLE FLAT (
 accomNo INTEGER,
 ownersName VARCHAR(20) NOT NULL,
 ownersTelNo VARCHAR(11) NOT NULL,	
 CONSTRAINT pFlat PRIMARY KEY(accomNo),
 CONSTRAINT fAccommodation2 FOREIGN KEY(accomNo) REFERENCES Accommodation(accomNo)
);
​
​
​
CREATE TABLE Inspection (
accomNo INTEGER REFERENCES Flat(accomNo),
inspectDate DATE NOT NULL,
staffNo INTEGER NOT NULL REFERENCES AccommodationStaff(staffNo),
roomCondition VARCHAR(3) NOT NULL,
comments VARCHAR(50) NOT NULL,
CONSTRAINT pInspection  PRIMARY KEY(accomNo,inspectDate)
);
​
CREATE TABLE Room (
placeNo INTEGER,
roomNo VARCHAR(10) NOT NULL,
monthlyRent DECIMAL(5,2) NOT NULL,
accomNo INTEGER NOT NULL,
CONSTRAINT pRoom PRIMARY KEY(placeNo),
CONSTRAINT fAccommodation3 FOREIGN KEY(accomNo) REFERENCES Accommodation(accomNo)
);
​
CREATE TABLE Lease (
leaseNo INTEGER,
duration INTEGER NOT NULL,
studentid INTEGER NOT NULL REFERENCES Student(studentid),
placeNo INTEGER NOT NULL REFERENCES Room(placeNo),
dateEnter DATE NOT NULL,
dateLeave DATE,
CONSTRAINT pLease PRIMARY KEY(leaseNo)
);
 
 CREATE TABLE Invoice (
 invoiceNo INTEGER,
 semester INTEGER NOT NULL,
 paymentDue DECIMAL(5,2) NOT NULL,
 datePaid DATE, 
 paymentMethod VARCHAR(6) NOT NULL,
 dateReminder1 DATE,
 dateReminder2 DATE,
 leaseNo INTEGER NOT NULL,
 CONSTRAINT pInvoice PRIMARY KEY(invoiceNo),
 CONSTRAINT fLease1 FOREIGN KEY(leaseNo) REFERENCES Lease(leaseNo),CONSTRAINT cTypeOfPayment CHECK (LOWER(paymentMethod) IN ('cheque','cash','credit','debit')),
 CONSTRAINT cSemesterType2 CHECK (semester BETWEEN 1 AND 3)
); 