/*
SQLyog - Free MySQL GUI v5.02
Host - 5.1.65-community : Database - mysangathi
*********************************************************************
Server version : 5.1.65-community
*/


create database if not exists `mysangathi`;

USE `mysangathi`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `AccountID` bigint(40) NOT NULL AUTO_INCREMENT,
  `UserID` bigint(40) DEFAULT NULL,
  `ProfileID` bigint(40) DEFAULT NULL,
  `Subscription_Type` varchar(30) DEFAULT NULL,
  `Validity` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Prev_SubscriptionType` varchar(30) DEFAULT NULL,
  `NextRenewDate` date DEFAULT NULL,
  `LastRenewedDate` date DEFAULT NULL,
  `LastPaymentAmount` varchar(30) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `InvoiceAmount` date DEFAULT NULL,
  `LastPaymentID` bigint(40) DEFAULT NULL,
  PRIMARY KEY (`AccountID`),
  KEY `UserID` (`UserID`,`ProfileID`,`LastPaymentID`),
  KEY `FK_account` (`ProfileID`),
  KEY `FK_account_1` (`LastPaymentID`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ProfileID`),
  CONSTRAINT `account_ibfk_2` FOREIGN KEY (`LastPaymentID`) REFERENCES `payment` (`PaymentID`),
  CONSTRAINT `account_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account` */

/*Table structure for table `account_transaction` */

DROP TABLE IF EXISTS `account_transaction`;

CREATE TABLE `account_transaction` (
  `AccountID` bigint(40) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `UserID` bigint(40) DEFAULT NULL,
  `ProfileID` bigint(40) DEFAULT NULL,
  `Subscription_Type` varchar(30) DEFAULT NULL,
  `Validity` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Prev_SubscriptionType` varchar(30) DEFAULT NULL,
  `NextRenewDate` date DEFAULT NULL,
  `LastRenewedDate` date DEFAULT NULL,
  `LastPaymentAmount` varchar(30) DEFAULT NULL,
  `InvoiceDate` date DEFAULT NULL,
  `InvoiceAmount` varchar(30) DEFAULT NULL,
  `LastPaymentID` bigint(40) DEFAULT NULL,
  KEY `UserID` (`UserID`,`ProfileID`,`LastPaymentID`),
  KEY `FK_account_transaction` (`AccountID`),
  KEY `FK_account_transaction_2` (`ProfileID`),
  KEY `FK_account_transaction_3` (`LastPaymentID`),
  CONSTRAINT `account_transaction_ibfk_1` FOREIGN KEY (`AccountID`) REFERENCES `account` (`AccountID`),
  CONSTRAINT `account_transaction_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `account_transaction_ibfk_3` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ProfileID`),
  CONSTRAINT `account_transaction_ibfk_4` FOREIGN KEY (`LastPaymentID`) REFERENCES `payment` (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account_transaction` */

/*Table structure for table `interestprofile` */

DROP TABLE IF EXISTS `interestprofile`;

CREATE TABLE `interestprofile` (
  `FromProfileID` int(50) DEFAULT NULL,
  `ToProfileID` int(50) DEFAULT NULL,
  `RequestDate` date DEFAULT NULL,
  `Message` text,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `InterestID` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`InterestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `interestprofile` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `PaymentID` bigint(40) NOT NULL AUTO_INCREMENT,
  `PaymentDate` date DEFAULT NULL,
  `Amount` varchar(30) DEFAULT NULL,
  `PaymentType` varchar(30) DEFAULT NULL,
  `TransactionStatus` text,
  `Invoice_Amount` varchar(30) DEFAULT NULL,
  `InvoiceID` varchar(40) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `Response` text,
  PRIMARY KEY (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

/*Table structure for table `profile` */

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `ProfileID` bigint(40) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `Age` int(5) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Religion` varchar(50) DEFAULT NULL,
  `Caste` varchar(50) DEFAULT NULL,
  `SubCaste` varchar(50) DEFAULT NULL,
  `MotherTongue` varchar(50) DEFAULT NULL,
  `WorkPlace` varchar(100) DEFAULT NULL,
  `CurrentWorkStatus` varchar(100) DEFAULT NULL,
  `Photo` varchar(200) DEFAULT NULL,
  `Photo_UploadedDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `LastModifiedDate` date DEFAULT NULL,
  `CreatedBy` varchar(100) DEFAULT NULL,
  `LastModifiedBy` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `CountryLivingIn` varchar(50) DEFAULT NULL,
  `MobileNo` varchar(50) DEFAULT NULL,
  `PhoneNo` varchar(50) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Rashi` varchar(50) DEFAULT NULL,
  `Nakshatra` varchar(50) DEFAULT NULL,
  `Education` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `MartialStatus` varchar(50) DEFAULT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  `Hobbies` text,
  `Interests` text,
  `AnnualIncome` varchar(50) DEFAULT NULL,
  `AboutYourSelf` text,
  `Logindate` date DEFAULT NULL,
  `LastLoginTime` datetime DEFAULT NULL,
  `Profession` varchar(50) DEFAULT '(NULL)',
  `CompanyNo` varchar(50) DEFAULT '(NULL)',
  `Hororscope` varchar(200) DEFAULT '(NULL)',
  `HoroscopeUploadedDate` date DEFAULT NULL,
  `PaidStatus` varchar(50) DEFAULT NULL,
  `Paymentdate` date DEFAULT NULL,
  `PaymentType` varchar(100) DEFAULT NULL,
  `Comments` text,
  `IsAdmin` varchar(100) DEFAULT 'false',
  `ReferenceID` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `ResidenceCountry` varchar(20) DEFAULT NULL,
  `ResidenceSTD` varchar(10) DEFAULT NULL,
  `Feet` int(5) DEFAULT NULL,
  `Inch` float DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `AmountPaid` float DEFAULT NULL,
  `fathername` varchar(100) DEFAULT '(NULL)',
  `fatheroccupation` varchar(100) DEFAULT '(NULL)',
  `sibblings` varchar(20) DEFAULT '(NULL)',
  `mothername` varchar(20) DEFAULT '(NULL)',
  `motheroccupation` varchar(100) DEFAULT '(NULL)',
  `noofbrothers` varchar(50) DEFAULT NULL,
  `noofsisters` varchar(50) DEFAULT NULL,
  `HaveChildren` varchar(5) DEFAULT NULL,
  `Currency` varchar(50) DEFAULT NULL,
  `Inactive` varchar(5) DEFAULT '0',
  `MultipleEducationDeatiles` varchar(60) DEFAULT NULL,
  `countrycode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ProfileID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `profile` */

insert into `profile` values 
(35,'Admin','','','',0,'1986-04-05','','','','','','','','1986-04-05','1986-04-05','1986-04-05','','','admin@mysangathi.com','','','','admin@mysangathi.com','','','','','','','','','','','','','1986-04-05','1986-04-05 00:00:00','','','',NULL,'','1986-04-05','',NULL,'true','','Active','','',0,0,'admin',0,'','',NULL,'','','','','','','0','',''),
(36,'javed','','','male',26,'1986-06-08','Hindu','Brahmin','','','India','','./Uploads/Photo/1369906211.jpg','2013-05-30','2013-05-30','2013-05-30','javedbasha.s.m01@gmail.com','javedbasha.s.m01@gmail.com','javedbasha.s.m01@gmail.com',NULL,'7878989989','','javedbasha.s.m01@gmail.com','','','B.A','India','Karnataka','','Never Married','','',NULL,'',NULL,'2013-05-30','2013-05-30 15:00:11','Accountant','','','2013-05-30','',NULL,'','','false','BG-00036','Active','','',0,NULL,'javed  ',0,'','','(NULL)','','','','',NULL,'Indian Rupees','0','','+91'),
(37,'kumari','','','male',26,'1986-06-24','Hindu','Brahmin','','','India','','./Uploads/Photo/1369906295.jpg','2013-05-30','2013-05-30','2013-05-30','mindlinks001@gmail.com','mindlinks001@gmail.com','mindlinks001@gmail.com',NULL,'7878989989','','mindlinks001@gmail.com','','','B.A','India','Karnataka','','Never Married','','',NULL,'',NULL,'2013-05-30','2013-05-30 15:01:35','Accountant','','','2013-05-30','',NULL,'','','false','BG-00037','Active','','',0,NULL,'kumari  ',0,'','','(NULL)','','','','',NULL,'Indian Rupees','0','','+91'),
(38,'aswi','','','female',27,'1986-05-06','Hindu','Brahmin','','','India','','./Uploads/Photo/1369908787.jpg','2013-05-30','2013-05-30','2013-05-30','mindlinks002@gmail.com','mindlinks002@gmail.com','mindlinks002@gmail.com',NULL,'7898876546','','mindlinks002@gmail.com','','','B.A','India','Karnataka','','Never Married','','',NULL,'',NULL,'2013-05-30','2013-05-30 15:43:07','Accountant','','','2013-05-30','',NULL,'','','false','BR-00038','Active','','',0,NULL,'aswi  ',0,'','','(NULL)','','','','',NULL,'Indian Rupees','0','','+91');

/*Table structure for table `profileviews` */

DROP TABLE IF EXISTS `profileviews`;

CREATE TABLE `profileviews` (
  `ProfileID` int(50) NOT NULL,
  `FromProfileid` int(50) DEFAULT NULL,
  `ToProfileid` int(50) DEFAULT NULL,
  `ViewDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `profileviews` */

insert into `profileviews` values 
(1,35,38,'2013-05-29');

/*Table structure for table `subscription` */

DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `SubscribeID` bigint(40) NOT NULL AUTO_INCREMENT,
  `SubscribedDate` date DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Features` text,
  `UserName` varchar(100) DEFAULT NULL,
  `Url` varchar(200) DEFAULT NULL,
  `TempPassword` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SubscribeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `subscription` */

insert into `subscription` values 
(1,'2013-05-30','Active',NULL,'javedbasha.s.m01@gmail.com','http://localhost:8089/mysangathi/UI/subscribe_changepassword.jsp?rannum=2XGDTCKUD&username=javedbasha.s.m01@gmail.com','2XGDTCKUD'),
(2,'2013-05-30','Active',NULL,'mindlinks001@gmail.com','http://localhost:8089/mysangathi/UI/subscribe_changepassword.jsp?rannum=2Z5KSYJA3&username=mindlinks001@gmail.com','2Z5KSYJA3'),
(3,'2013-05-30','Active',NULL,'mindlinks002@gmail.com','http://localhost:8089/mysangathi/UI/subscribe_changepassword.jsp?rannum=7BS7EOB2B&username=mindlinks002@gmail.com','7BS7EOB2B');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `UserID` bigint(40) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `LastAccessedDate` date DEFAULT NULL,
  `CreatedDate` date DEFAULT NULL,
  `LastModifiedDate` date DEFAULT NULL,
  `PreviousPassword` varchar(100) DEFAULT NULL,
  `PreviousPasswordModifiedDate` date DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `ProfileID` bigint(40) DEFAULT NULL,
  `TempPassword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  KEY `FK_user` (`ProfileID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ProfileID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert into `user` values 
(1,'admin@mysangathi.com','9mC56MGwAvG4yy99AI3Fvg==','2013-04-20',NULL,'2013-04-20','9mC56MGwAvG4yy99AI3Fvg==','2013-04-20','Active',35,'9mC56MGqAvG4yy99AI3Fvg=='),
(2,'javedbasha.s.m01@gmail.com','5abWR6aTYtY0TKA+cbJcSA==',NULL,'2013-05-30','2013-05-30','gahYf7qBU2zpO+bfwT+p4Q==','2013-05-30','Active',36,NULL),
(3,'mindlinks001@gmail.com','5abWR6aTYtY0TKA+cbJcSA==',NULL,'2013-05-30','2013-05-30','1GOO2nXQM1SutsfRYHQFtg==','2013-05-30','Active',37,NULL),
(4,'mindlinks002@gmail.com','5abWR6aTYtY0TKA+cbJcSA==',NULL,'2013-05-30','2013-05-30','plLrzLZRfOXEYbVHuGjcmQ==','2013-05-30','Active',38,NULL);
