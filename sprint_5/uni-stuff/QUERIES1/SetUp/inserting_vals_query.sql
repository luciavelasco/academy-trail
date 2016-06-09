--  Populate the relations with some test data 
​
INSERT INTO Course VALUES 
(1000,'Software Engineering','Rupert Lennox','3421', 'BT3.2','Computing');
INSERT INTO Course VALUES
(1001,'Internet Systems','Simon Roach','3255','BT1.4','Computing');
​
--  AdvisorOfStudies relation
INSERT INTO AdvisorOfStudies VALUES
(2000,'Sue','Allen','Senior Lecturer','Computing','2199','BK1.15');
INSERT INTO AdvisorOfStudies VALUES
(2001,'Andy','Bates','Lecturer','Computing','2975','BK1.09');
INSERT INTO AdvisorOfStudies VALUES
(2002,'Patrick','Philips','Senior Lecturer','Computing','3922','BT0.05');
​
INSERT INTO Student VALUES
(3000,'Angela','Harris','32 St Nevilles Way','Bradford','BR26 4SB','1985-09-12','f',1000,2001);
INSERT INTO Student VALUES
(3001,'Alan','peterSon','47 Grenville Gardens','Exeter','EX29 5FA','1986-01-01','m',1001,2000);
INSERT INTO Student VALUES
(3002,'Jenifer','Jackson','19 Denby Road','Liverpool','LP21 4QA','1984-10-19','f',1000,2001);
INSERT INTO Student VALUES
(3003,'alice','Wong','45 Dreary Crescent','Bolton','BT20 1SA','1985-05-04','f',1000,2001);
INSERT INTO Student VALUES
(3004,'Darren','Peters','4 Solent Way','Southampton','S022 4SA','1984-10-12','m',1001,2000);
INSERT INTO Student VALUES
(3005,'SuSan','WrighT','143 GreenHill Road','Portsmouth','PO21 4SA','1983-01-01','f',1000,2000);
INSERT INTO Student VALUES
(3006,'Jim','Laker','29 Digby Road','Plymouth','PY21 3QA','1984-10-19','m',1001,2001);
INSERT INTO Student VALUES
(3007,'Peter','Smythe','7 Sunny Crescent','Bolton','BT20 1SA','1985-05-04','m',1001,2001);
INSERT INTO Student VALUES
(3008,'Adrian','Peterson','4 Shefield Way','Southampton','S023 4SC','1984-11-15','m',1001,2000);
INSERT INTO Student VALUES
(3009,'Susan','Kemp','123 GreenHill Road','portsmouth','PO21 4SA','1984-06-28','f',1000,2001);
INSERT INTO Student VALUES
(3010,'Tony','FieldS','21 Portsea Avenue','Portsmouth','PO22 3QA','1984-09-12','m',1001,2001);
INSERT INTO Student VALUES
(3011,'Samantha','ellis','7 Woodbury Way','Portsmouth','PO20 1SA','1985-05-17','f',1001,2001);
​
--  NextOfKin relation 
INSERT INTO NextOfKin VALUES
(3000,'Martha Harris','32 St Nevilles Way','Bradford','BR26 4SB','01653278266');
INSERT INTO NextOfKin VALUES
(3001,'David Peterson','47 Grenville Gardens','Exeter','EX29 5FA','01793527829');
INSERT INTO NextOfKin VALUES
(3002,'Davina Jackson','19 Denby Road','Liverpool','LP21 4QA','01966789342');
INSERT INTO NextOfKin VALUES
(3003,'Arnold Wallace','36 Acasia Avenue','Blackburn','BL34 5LX','07845382981');
INSERT INTO NextOfKin VALUES
(3004,'Anthony Peters','4 Solent Way','Southampton','S022 4SA','02380453982');
INSERT INTO NextOfKin VALUES
(3005,'Phillipa Wright','143 GreenHill Road','Portsmouth','PO21 4SA','02392874381');
INSERT INTO NextOfKin VALUES
(3006,'Sheila Laker','29 Digby Road','Plymouth','PY21 3QA','03627893825');
INSERT INTO NextOfKin VALUES
(3007,'Margaret Atkins','14 Mulberry Crescent','Portsmouth','PO23 1SW','02392674637');
INSERT INTO NextOfKin VALUES
(3008,'Anthony Peterson','4 Shefield Way','Southampton','S022 4SA','02380453982');
INSERT INTO NextOfKin VALUES
(3009,'Adrian Kemp','123 GreenHill Road','Portsmouth','PO21 4SA','02392874381');
INSERT INTO NextOfKin VALUES
(3010,'Sheila Fields','21 Portsea Avenue','Portsmouth','P022 3QA','02392893825');
INSERT INTO NextOfKin VALUES
(3011,'Margaret Ellis','7 Woodbury Way','Portsmouth','PO20 1SA','02392674637');
-- AccommodationStaff relation 
INSERT INTO AccommodationStaff VALUES
(4000,'Lyndsey','Ellis','20 Selsey Road','Portsmouth','P01 2AE','1953-12-17','f','inspector','Nuffield');
INSERT INTO AccommodationStaff VALUES
(4001,'Christopher','Edwards','123 Southsea Road','Portsmouth','PO1 2AE','1976-05-19','m','office staff','Nuffield');
INSERT INTO AccommodationStaff VALUES
(4002,'Simon','Briggs','43 Eldon Road','Portsmouth','P022 4DZ','1958-03-14','m','Hall Manager','Harry Law Hall');
INSERT INTO AccommodationStaff VALUES
(4003,'Alison','Briggs','43 Eldon Road','Portsmouth','P022 4DZ','1959-02-01','f','inspector','Nuffield');
INSERT INTO AccommodationStaff VALUES
(4004,'Peter','Parker','26 Hill Lane','Southampton','S027 3SZ','1961-09-30','m','hall manager','Bateson Hall');
​
-- Accommodation relation
INSERT INTO Accommodation VALUES
(5000,'Mary Rose Street','Portsmouth','PO1 2BL',110);
INSERT INTO Accommodation VALUES
(5001,'Queens Mall','Portsmouth','PO1 2SP',145);
INSERT INTO Accommodation VALUES
(6000,'26 Burnaby Road','Portsmouth','PO1 2DT',3);
INSERT INTO Accommodation VALUES
(6001,'27 Burnaby Road','Portsmouth','PO1 2DT',4);
INSERT INTO Accommodation VALUES
(6002,'45 Anglesea Road','Portsmouth','PO1 3DJ',5);
INSERT INTO Accommodation VALUES
(6003,'44 Anglesea Road','Portsmouth','PO1 3DJ',3);
​
-- Hall relation
INSERT INTO HALL VALUES
(5000,'Bateson hall','0239',4004);
INSERT INTO HALL VALUES
(5001,'Harry Law Hall','5643',4002);
​
-- FLAT relation
INSERT INTO FLAT VALUES
(6000,'Peter Harris','02392435627');
INSERT INTO FLAT VALUES
(6001,'Peter Harris','02392435627');
INSERT INTO FLAT VALUES
(6002,'Samantha Jones','02392477628');
INSERT INTO FLAT VALUES
(6003,'Samantha Jones','02392477628');
​
-- Room Relation
INSERT INTO Room VALUES
(10000,'BAT001',145.00,5000);
INSERT INTO Room VALUES
(10001,'BAT002',145.00,5000);
INSERT INTO Room VALUES
(10002,'BAT003',145.00,5000);
INSERT INTO Room VALUES
(10003,'BAT004',145.00,5000);
INSERT INTO Room VALUES
(10004,'BAT101',150.00,5000);
INSERT INTO Room VALUES
(10005,'BAT102',150.00,5000);
INSERT INTO Room VALUES
(10006,'BAT103',150.00,5000);
INSERT INTO Room VALUES
(10007,'BAT104',150.00,5000);
INSERT INTO Room VALUES
(10200,'HL001',165.00,5001);
INSERT INTO Room VALUES
(10201,'HL002',165.00,5001);
INSERT INTO Room VALUES
(10202,'HL003',165.00,5001);
INSERT INTO Room VALUES
(10203,'HL101',180.00,5001);
INSERT INTO Room VALUES
(10204,'HL102',175.00,5001);
INSERT INTO Room VALUES
(10205,'HL103',175.00,5001);
INSERT INTO Room VALUES
(10206,'HL104',170.00,5001);
INSERT INTO Room VALUES
(20000,'RoomA',150.00,6000);
INSERT INTO Room VALUES
(20001,'RoomB',160.00,6000);
INSERT INTO Room VALUES
(20002,'RoomC',150.00,6000);
INSERT INTO Room VALUES
(20003,'Room1',180.00,6001);
INSERT INTO Room VALUES
(20004,'Room2',170.00,6001);
INSERT INTO Room VALUES
(20005,'Room3',170.00,6001);
INSERT INTO Room VALUES
(20006,'Room4',180.00,6001);
INSERT INTO Room VALUES
(20007,'RoomA',140.00,6002);
INSERT INTO Room VALUES
(20008,'RoomB',150.00,6002);
INSERT INTO Room VALUES
(20009,'RoomC',140.00,6002);
INSERT INTO Room VALUES
(20010,'RoomD',140.00,6002);
INSERT INTO Room VALUES
(20011,'RoomE',150.00,6002);
INSERT INTO Room VALUES
(10008,'BAT005',145.00,5000);
INSERT INTO Room VALUES
(20012,'Room1',150.00,6003);
INSERT INTO Room VALUES
(20013,'Room2',150.00,6003);
INSERT INTO Room VALUES
(20014,'Room3',150.00,6003);
​
​
-- Inspection relation
INSERT INTO Inspection VALUES
(6000,'2005-06-17',4000,'yes','boiler replaced and working satisfactorily');
INSERT INTO Inspection VALUES
(6000,'2005-05-01',4003,'no','inadequate and possibly dangerous boiler');
INSERT INTO Inspection VALUES
(6001,'2005-07-29',4003,'yes','some painting required');
INSERT INTO Inspection VALUES
(6001,'2004-06-03',4000,'yes','fine');
INSERT INTO Inspection VALUES
(6002,'2004-03-19',4000,'yes','repairs carried out satisfactorily');
INSERT INTO Inspection VALUES
(6002,'2004-01-10',4003,'no','dangerous staircase, damp present');
INSERT INTO Inspection VALUES
(6002,'2005-04-20',4003,'yes','ok');
​
-- Lease relation
INSERT INTO Lease VALUES
(7000,3,3000,10000,'2005-10-01',null);
INSERT INTO Lease VALUES
(7001,3,3002,10001,'2005-10-01',null);
INSERT INTO Lease VALUES
(7002,3,3003,10002,'2005-10-01',null);
INSERT INTO Lease VALUES
(7003,3,3001,10200,'2005-10-01',null);
INSERT INTO Lease VALUES
(7004,3,3004,10201,'2005-10-01',null);
INSERT INTO Lease VALUES
(7005,3,3006,10202,'2005-10-01',null);
INSERT INTO Lease VALUES
(7006,1,3005,20004,'2005-10-01','2006-01-31');
INSERT INTO Lease VALUES
(7007,1,3009,20005,'2005-10-01','2006-01-31');
INSERT INTO Lease VALUES
(7008,1,3011,20003,'2005-10-01','2006-01-31');
INSERT INTO Lease VALUES
(7009,3,3007,20009,'2005-10-01','2006-01-31');
INSERT INTO Lease VALUES
(7010,3,3008,20011,'2005-10-01','2006-01-31');
INSERT INTO Lease VALUES
(7011,3,3010,20007,'2005-10-01','2006-01-31');
​
select * from Inspection;
​
INSERT INTO Invoice VALUES
(8001,1,435,'2006-02-01','cheque',null,null,7001);
​
INSERT INTO Invoice VALUES
(8002,1,435,'2006-02-01','debit',null,null,7002);
​
INSERT INTO Invoice VALUES
(8003,1,495,null,'debit','2006-02-06',null,7003);
​
INSERT INTO Invoice VALUES
(8004,1,495,'2006-02-01','credit',null,null,7004);
​
INSERT INTO Invoice VALUES
(8005,1,495,'2006-02-01','credit',null,null,7005);
INSERT INTO Invoice VALUES
​
(8006,1,510,null,'credit','2006-02-17',null,7006);
​
INSERT INTO Invoice VALUES
(8007,1,510,'2006-02-01','credit',null,null,7007);
​
INSERT INTO Invoice VALUES
(8008,1,420,null,'credit','2006-02-06',null,7009);
INSERT INTO Invoice VALUES
(8009,1,450,'2006-02-01','credit',null,null,7010);
INSERT INTO Invoice VALUES
(8010,1,420,'2006-02-01','cheque',null,null,7011);