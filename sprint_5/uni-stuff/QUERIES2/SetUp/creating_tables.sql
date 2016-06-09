/* create database */
DROP DATABASE IF EXISTS happyhomes;
CREATE DATABASE IF NOT EXISTS happyhomes;
​
USE happyhomes;
​
CREATE TABLE RegionalOffice (
  regionalOfficeID  INTEGER,
  region VARCHAR(10) NOT NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(30) NOT NULL,
  postcode VARCHAR(8) NOT NULL,
  telNo VARCHAR(15) NOT NULL,
  
  CONSTRAINT pRegionalOffice PRIMARY KEY(regionalOfficeID),
  CONSTRAINT cRegionalOfficeRegion CHECK (region IN ('North West','North East','Central','South West','South East'))
);
​
CREATE TABLE LocalOffice (
  localOfficeID INTEGER,
  regionalOfficeID INTEGER NOT NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(30) NOT NULL,
  postcode VARCHAR(8) NOT NULL,
  telNo VARCHAR(15) NOT NULL,
  
  CONSTRAINT pLocalOffice PRIMARY KEY(localOfficeID),
  CONSTRAINT fLocalOfficeRegion FOREIGN KEY(regionalOfficeID) REFERENCES RegionalOffice(regionalOfficeID)
);
​
CREATE TABLE Staff (
  staffID INTEGER,
  fName VARCHAR(35) NOT NULL,
  lName VARCHAR(35) NOT NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(30) NOT NULL,
  postcode VARCHAR(8) NOT NULL,
  contactTelNo VARCHAR(15) NOT NULL,
  email VARCHAR(254) NOT NULL,
  salary DECIMAL(9,2) NOT NULL,
  
  CONSTRAINT pStaff PRIMARY KEY(staffID)
);
​
CREATE TABLE SiteManager (
  siteManagerID INTEGER,
  regionalOfficeID INTEGER NOT NULL,
  businessTelNo VARCHAR(15) NOT NULL,
  CONSTRAINT pSiteManager PRIMARY KEY(siteManagerID),
  CONSTRAINT fSiteManagerStaff FOREIGN KEY(siteManagerID) REFERENCES Staff(staffID),
  CONSTRAINT fSiteManagerOffice FOREIGN KEY(regionalOfficeID) REFERENCES RegionalOffice(regionalOfficeID)
);
​
CREATE TABLE SalesAdvisor (
  salesAdvisorID INTEGER,
  localOfficeID INTEGER NOT NULL,
  internalExtension VARCHAR(4) NOT NULL,
  commisionRate DECIMAL(4,3) NOT NULL,
  
  CONSTRAINT pSalesAdvisor PRIMARY KEY(salesAdvisorID),
  CONSTRAINT fSalesAdvisorStaff FOREIGN KEY(salesAdvisorID) REFERENCES Staff(staffID),
  CONSTRAINT fSalesAdvisorOffice FOREIGN KEY(localOfficeID) REFERENCES LocalOffice(localOfficeID)
);
​
CREATE TABLE Development (
  developmentID INTEGER,
  siteManagerID INTEGER NOT NULL,
  dateStarted DATE NOT NULL,
  dateFinished DATE,
  CONSTRAINT pDevelopment PRIMARY KEY(developmentID),
  CONSTRAINT fDevelopmentSiteMan FOREIGN KEY(siteManagerID) REFERENCES SiteManager(siteManagerID)
);
​

​
CREATE TABLE PropertyType (
  propertyType VARCHAR(10),
  bedroomNo INTEGER(2) NOT NULL,
  receptionRoomNo INTEGER(2) NOT NULL,
  bathroomNo INTEGER(2) NOT NULL,
  ensuiteNo INTEGER(2) NOT NULL,
  parkingAllocation VARCHAR(13) NOT NULL,
  numberOfFloors INT(1) NOT NULL,
  gardenSize INT(3) NOT NULL,
  
  CONSTRAINT pPropertyType PRIMARY KEY(propertyType),
  CONSTRAINT cPropetyTypeParking CHECK (parkingAllocation IN ('single garage','double garage','parking space','carport'))
);
​
​
CREATE TABLE Property (
  propertyID INTEGER,
  developmentID INTEGER NOT NULL,
  propertyType VARCHAR(10) NOT NULL,
  plot INTEGER NOT NULL,
  CONSTRAINT pProperty PRIMARY KEY(propertyID),
  CONSTRAINT fPropertyDev FOREIGN KEY(developmentID) REFERENCES Development(developmentID),
  CONSTRAINT fPropertyPType FOREIGN KEY(propertyType) REFERENCES PropertyType(propertyType)
);
​
CREATE TABLE Customer (
  customerID INTEGER,
  fName VARCHAR(35) NOT NULL,
  lName VARCHAR(35) NOT NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(30) NOT NULL,
  postcode VARCHAR(8) NOT NULL,
  telNo VARCHAR(15) NOT NULL,
  email VARCHAR(254) NOT NULL,
  
  CONSTRAINT pCustomer PRIMARY KEY(customerID)
);
​
CREATE TABLE Solicitor (
  solicitorID INTEGER,
  localOfficeID INTEGER NOT NULL,
  fName VARCHAR(35) NOT NULL,
  lName VARCHAR(35) NOT NULL,
  address VARCHAR(50) NOT NULL,
  city VARCHAR(30) NOT NULL,
  postcode VARCHAR(8) NOT NULL,
  telNo VARCHAR(15) NOT NULL,
  email VARCHAR(254) NOT NULL,
  
  CONSTRAINT pSolicitor PRIMARY KEY(solicitorID),
  CONSTRAINT fSolicitorOffice FOREIGN KEY(localOfficeID) REFERENCES LocalOffice(localOfficeID)
);
​
CREATE TABLE Transaction (
  transactionID INTEGER,
  salesAdvisorID INTEGER NOT NULL,
  customerID INTEGER NOT NULL,
  propertyID INTEGER NOT NULL,
  solicitorID INTEGER NOT NULL,
  initialDate DATETIME NOT NULL,
  finalisationDate DATETIME,
  value DECIMAL(10,2),
  solictorFee DECIMAL(10,2),
  CONSTRAINT pTransaction PRIMARY KEY(transactionID),
  CONSTRAINT fTransactionSalesAd  FOREIGN KEY(salesAdvisorID) REFERENCES SalesAdvisor(salesAdvisorID),
  CONSTRAINT fTransactionCust FOREIGN KEY(customerID) REFERENCES Customer(customerID),
  CONSTRAINT fTransactionProp FOREIGN KEY(propertyID) REFERENCES Property(propertyID),
  CONSTRAINT fTransactionSolicitor  FOREIGN KEY(solicitorID) REFERENCES Solicitor(solicitorID)
);
​
/* debug output */
SHOW TABLES;