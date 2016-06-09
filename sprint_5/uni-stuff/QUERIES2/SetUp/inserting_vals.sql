USE happyhomes;

 /* REGIONAL OFFICE */
INSERT INTO RegionalOffice VALUES
(1, 'North East', '6 Deangate', 'York', 'YO1 7JB', '01904749035'),
(2, 'North West', '62 Wilson Street', 'Glasgow', 'G1 1HD', '01415526522'),
(3, 'Central', '22 Cannon Street', 'Birmingham', 'B2 5EN', '01216438900'),
(4, 'South West', '49 Broad Street', 'Bristol', 'BS1 2EP', '01179252520'),
(5, 'South East', '10 James Street', 'London', 'WC2E 8BT', '02078364678');

 /* LOCAL OFFICE */
INSERT INTO LocalOffice VALUES
(1, 1, '4 Parliament Street', 'York', 'YO1 8SE', '01904676867'),
(2, 1, '92 Linthorpe Road', 'Middlesbrough', 'TS1 2NR', '01642224401'),
(3, 1, '26 Great George Street', 'Leeds', 'LS1 3DL', '01132440810'),
(4, 2, '44 Gilmore Place', 'Edinburgh', 'EH3 9NQ', '01312299932'),
(5, 2, '94 Nethergate', 'Dundee', 'DD1 4EL', '01382200302'),
(6, 2, '31 Saint Andrew Street', 'Aberdeen', 'AB25 1JA', '01224451444'),
(7, 3, '29 Millstone Lane', 'Leicester', 'LE1 5JN', '01162622555'),
(8, 3, '22 Bridge Street', 'Northhampton', 'NN1 1NW', '01604230222'),
(9, 3, '36 Church Street', 'Stoke-on-Trent', 'ST4 1DJ', '01782410411'),
(10, 4, '51 Wellsway', 'Bath', 'BA2 4RS', '01225423434'),
(11, 4, '66 South Street', 'Exeter', 'EX1 1EE', '01392279897'),
(12, 4, '5 Annerley Road', 'Bournemouth', 'BH1 3PG', '01202315067'),
(13, 5, '51 Regency Square', 'Brighton', 'BN1 2FF', '01273205286'),
(14, 5, '134 Balham High Road', 'London', 'SW12 8BN', '02086750319'),
(15, 5, '2 North Station Road', 'Colchester', 'CO1 1RB', '01206500200');

 /* STAFF (SITE MANAGERS) */
INSERT INTO Staff VALUES
(1, 'John', 'Bishop', '37 Bull Lane', 'York', 'YO10 3EN', '07534672551', 'john.bishop@happyhomes.co.uk', 50000),
(2, 'Emma', 'Smith', '167 Renfrew Street', 'Glasgow', 'G3 6RQ', '07671345842', 'emma.smith@happyhomes.co.uk', 50000),
(3, 'Michael', 'Robinson', '40 Tennal Road', 'Birmingham', 'B32 2JE', '07546374940', 'michael.robinson@happyhomes.co.uk', 50000),
(4, 'Chris', 'Luscombe', '66 Raymend Road', 'Bristol', 'BS3 4QW', '07487515466', 'chris.luscombe@happyhomes.co.uk', 50000),
(5, 'Sarah', 'Peterson', '212 Kingland Road', 'London', 'E2 8AX', '07452159785', 'speterson@happyhomes.co.uk', 50000);

INSERT INTO SiteManager VALUES
(1, 1, '07836487364'),
(2, 2, '07734759863'),
(3, 3, '07183749553'),
(4, 4, '07668304212'),
(5, 5, '07456822937');

 /* STAFF (SALES ADVISORS) */
INSERT INTO Staff VALUES
(6, 'Mairenn', 'Vincent', '83 Northcome Road', 'York', 'YO1 2HS', '07873648785', 'mvincent@happyhomes.co.uk', 40000),
(7, 'Humbert', 'Boone', '12 Oliver Road', 'Middlesbrough', 'TS1 9IA', '07736485758', 'humburt.boone@happyhomes.co.uk', 40000),
(8, 'Talulla', 'Strickland', '8 Patrick Street', 'Leeds', 'LS1 8HS', '07837464743', 'talulla.strickland@happyhomes.co.uk', 40000),
(9, 'Katelynn', 'Monaghan', '24 Ashton Road', 'Edinburgh', 'EH3 1AH', '07837474757', 'katelynn.monaghan@happyhomes.co.uk', 40000),
(10, 'Delmar', 'Womack', '75 Eaton Road', 'Dundee', 'DD1 5GS', '07763428345', 'delmar.womack@happyhomes.co.uk', 40000),
(11, 'Kat', 'Duane', '47 Hemlock Grove', 'Aberdeen', 'AB25 9KB', '07836464739', 'kat.duane@happyhomes.co.uk', 40000),
(12, 'Gretchen', 'Cavanaugh', '37 Graham Road', 'Leicester', 'LE1 9LA', '07786855670', 'gretchen.cavanaugh@happyhomes.co.uk', 40000),
(13, 'Carolina', 'Tuff', '68 Ashtree Road', 'Northhampton', 'NN1 0TW', '07847474743', 'carolina.tuff@happyhomes.co.uk', 40000),
(14, 'Madelina', 'Houston', '95 Apple Lane', 'Stoke-on-Trent', 'ST4 8YG', '07836401641', 'mhouston@happyhomes.co.uk', 40000),
(15, 'Wenona', 'O\'Malley', '43 Back Street', 'Bath', 'BA1 2JQ', '07737476462', 'wonona.omalley@happyhomes.co.uk', 40000),
(16, 'Olive', 'O\'brian', '12 St Mary Road', 'Exeter', 'EX1 6TE', '07837464622', 'oobrian@happyhomes.co.uk', 40000),
(17, 'Madelina', 'Lyon', '96 Market Street', 'Bournemouth', 'BH1 1KX', '07837463535', 'mlyon@happyhomes.co.uk', 40000),
(18, 'Gregor', 'Jepson', '82 High Road', 'Brighton', 'BN1 8HH', '07827363632', 'gregor.jepson@happyhomes.co.uk', 40000),
(19, 'Teàrlag', 'Macgrory', '3 Albert Road', 'London', 'SW12 0JM', '07836464632', 't.macgrory@happyhomes.co.uk', 40000),
(20, 'Delilah', 'Quick', '78 South Street', 'Colchester', 'CO1 3RS', '07373767464', 'delilah.quick@happyhomes.co.uk', 40000);

INSERT INTO SalesAdvisor VALUES
(6, 1, '0001', 0.05),
(7, 2, '0002', 0.05),
(8, 3, '0003', 0.01),
(9, 4, '0004', 0.05),
(10, 5, '0005', 0.1),
(11, 6, '0006', 0.175),
(12, 7, '0007', 0.05),
(13, 8, '0008', 0.07),
(14, 9, '0009', 0.05),
(15, 10, '0010', 0.05),
(16, 11, '0011', 0.15),
(17, 12, '0012', 0.05),
(18, 13, '0013', 0.02),
(19, 14, '0014', 0.05),
(20, 15, '0015', 0.05);

 /* DEVELOPMENT */
INSERT INTO Development VALUES
(1, 1, '2012-05-02', '2012-09-26'),
(2, 1, '2012-10-05', '2013-01-14'),
(3, 1, '2013-02-01', NULL),
(4, 2, '2012-08-12', '2012-12-19'),
(5, 2, '2013-02-01', NULL),
(6, 3, '2012-02-01', '2013-02-20'),
(7, 3, '2013-03-01', NULL),
(8, 4, '2012-05-22', '2012-11-07'),
(9, 4, '2012-11-26', '2013-03-12'),
(10, 4, '2013-03-29', '2013-04-12'),
(11, 5, '2013-01-06', '2013-04-28');

 /* PROPERTY TYPE */
INSERT INTO PropertyType VALUES
('Charleston', 3, 3, 1, 1, 'double garage', 2, 30),
('Henslow', 4, 3, 2, 1, 'double garage', 2, 60),
('McLeary', 2, 2, 1, 0, 'parking space', 2, 0),
('Richardson', 2, 4, 2, 2, 'single garage', 2, 10);

 /* PROPERTY */
INSERT INTO Property VALUES
(1, 1, 'Charleston', 1),
(2, 1, 'Charleston', 1),
(3, 1, 'Charleston', 2),
(4, 1, 'Charleston', 2),
(5, 1, 'Henslow', 3),
(6, 1, 'Henslow', 4),
(7, 1, 'McLeary', 5),
(8, 1, 'McLeary', 5),
(9, 1, 'McLeary', 5),
(10, 2, 'Charleston', 1),
(11, 2, 'Charleston', 1),
(12, 2, 'Charleston', 2),
(13, 2, 'Charleston', 2),
(14, 2, 'Henslow', 3),
(15, 2, 'Henslow', 4),
(16, 2, 'McLeary', 5),
(17, 2, 'McLeary', 5),
(18, 2, 'McLeary', 5),
(19, 3, 'Charleston', 1),
(20, 3, 'Charleston', 1),
(21, 3, 'Charleston', 2),
(22, 3, 'Charleston', 2),
(23, 3, 'Henslow', 3),
(24, 3, 'Henslow', 4),
(25, 3, 'McLeary', 5),
(26, 3, 'McLeary', 5),
(27, 3, 'McLeary', 5),
(28, 4, 'Charleston', 1),
(29, 4, 'Charleston', 1),
(30, 4, 'Charleston', 2),
(31, 4, 'McLeary', 2),
(32, 4, 'McLeary', 2),
(33, 5, 'Henslow', 1),
(34, 5, 'Henslow', 2),
(35, 6, 'Charleston', 1),
(36, 6, 'Charleston', 1),
(37, 6, 'Charleston', 2),
(38, 6, 'McLeary', 2),
(39, 6, 'McLeary', 2),
(40, 7, 'Henslow', 1),
(41, 7, 'Henslow', 2),
(42, 7, 'McLeary', 3),
(43, 7, 'McLeary', 3),
(44, 7, 'McLeary', 3),
(45, 8, 'Charleston', 1),
(46, 8, 'Charleston', 1),
(47, 8, 'Charleston', 2),
(48, 8, 'McLeary', 2),
(49, 8, 'McLeary', 2),
(50, 9, 'Henslow', 1),
(51, 9, 'Henslow', 2),
(52, 9, 'McLeary', 3),
(53, 9, 'McLeary', 3),
(54, 9, 'McLeary', 3),
(55, 10, 'Charleston', 1),
(56, 10, 'Charleston', 1),
(57, 10, 'Charleston', 2),
(58, 10, 'Charleston', 2),
(59, 10, 'Henslow', 3),
(60, 10, 'Henslow', 4),
(61, 10, 'McLeary', 5),
(62, 10, 'McLeary', 5),
(63, 10, 'McLeary', 5),
(64, 11, 'Charleston', 1),
(65, 11, 'Charleston', 1),
(66, 11, 'Charleston', 2),
(67, 11, 'McLeary', 2),
(68, 11, 'McLeary', 2),
(69, 11, 'Richardson', 3),
(70, 11, 'Richardson', 3);

 /* CUSTOMER */
INSERT INTO Customer VALUES
(1, 'Dan', 'Mickleston', '63 Merryweather Road', 'York', 'YO1 2JF', '07846756554', 'dannyboy@hotmail.com'),
(2, 'Lara', 'Smith', '27 Rock Street', 'Bath', 'BA2 6GS', '07836456573', 'larasmith63@yahoo.co.uk');

 /* SOLICITOR */
INSERT INTO Solicitor VALUES
(1, 1, 'Reginald', 'Robertson', '25 Oxbridge Street', 'York', 'YO1 8HR', '07625374857', 'rrobinson@rroblegal.co.uk'),
(2, 2, 'Lisa', 'Oxheart', '70 Porterbelly Road', 'Dundee', 'DD1 1LZ', '07847756390', 'loxheart@loxylaw.co.uk'),
(3, 3, 'Isabel', 'Isaacson', '9 Church Street', 'Leicester', 'LS1 7NO', '07098642685', 'isabel@iisolicitors.co.uk'),
(4, 4, 'Nathan', 'McAllister', '58 Locks Hill', 'Bristol', 'BS3 6YJ', '07846565644', 'nathan@mcallisterandco.co.uk'),
(5, 5, 'Sam', 'Smith', '87 Peddlers Grove', 'London', 'SW12 8JM', '07937464647', 'sam@sslegal.co.uk');

 /* TRANSACTION */
INSERT INTO Transaction VALUES
(1, 6, 1, 1, 1, '2012-11-16', '2012-12-04', 100000, 1000),
(2, 7, 2, 2, 1, '2012-11-20', '2012-12-24', 110000, 1000),
(3, 8, 1, 3, 4, '2012-10-12', '2012-11-04', 150000, 1000),
(4, 9, 1, 4, 3, '2012-10-17', '2012-11-09', 160000, 1000),
(5, 10, 2, 15, 3, '2012-11-23', '2012-11-30', 170000, 1000),
(6, 11, 1, 12, 3, '2012-12-11', '2012-12-23', 90000, 1000),
(7, 12, 2, 24, 3, '2012-11-07', '2012-12-01', 120000, 1000),
(8, 13, 1, 34, 3, '2012-12-14', '2012-12-28', 80000, 1000),
(9, 14, 1, 44, 1, '2012-11-16', '2012-12-04', 100000, 1000),
(10, 15, 2, 52, 1, '2012-11-20', '2012-12-24', 110000, 1000),
(11, 16, 1, 62, 4, '2012-10-12', '2012-11-04', 150000, 1000),
(12, 17, 1, 68, 3, '2012-10-17', '2012-11-09', 160000, 1000),
(13, 18, 2, 46, 3, '2012-11-23', '2012-11-30', 170000, 1000),
(14, 19, 1, 33, 3, '2012-12-11', '2012-12-23', 90000, 1000),
(15, 20, 2, 21, 3, '2012-11-07', '2012-12-01', 120000, 1000),
(16, 20, 1, 30, 3, '2012-12-14', '2012-12-28', 80000, 1000),
(17, 16, 2, 25, 2, '2012-12-02', '2012-12-08', 120000, 1000),
(18, 11, 1, 35, 5, '2012-12-24', '2013-01-11', 80000, 1000),
(19, 9, 1, 10, 5, '2013-01-24', '2013-02-11', 170000, 1000),
(20, 7, 2, 69, 5, '2013-01-24', '2013-02-11', 120000, 1000);