-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 18, 2020 at 09:51 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pgasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8989898989, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookpg`
--

DROP TABLE IF EXISTS `tblbookpg`;
CREATE TABLE IF NOT EXISTS `tblbookpg` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Userid` int(10) DEFAULT NULL,
  `Pgid` int(10) DEFAULT NULL,
  `BookingNumber` int(10) NOT NULL,
  `CheckinDate` date DEFAULT NULL,
  `UserMsg` varchar(250) DEFAULT NULL,
  `BookingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RemDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookpg`
--

INSERT INTO `tblbookpg` (`ID`, `Userid`, `Pgid`, `BookingNumber`, `CheckinDate`, `UserMsg`, `BookingDate`, `Remark`, `Status`, `RemDate`) VALUES
(18, 1, 11, 276253459, '2019-05-22', 'I arrived on 22 may in morning 10 am', '2019-05-20 11:34:09', 'Your Booking has been confirmed.', 'Confirmed', '2019-06-15 13:39:01'),
(19, 2, 16, 966726570, '2019-05-21', 'Give your contact number', '2019-05-20 11:35:55', '', NULL, '2019-06-06 15:29:55'),
(20, 3, 14, 705533047, '2019-05-24', 'Hi, I will arrive on 24 may in eve', '2019-05-20 11:37:23', '', NULL, '2019-06-06 15:29:57'),
(21, 4, 16, 811839401, '2019-05-27', 'bkjhjhhiu', '2019-05-20 11:38:13', '', NULL, '2019-06-06 15:30:00'),
(22, 1, 11, 189316467, '2019-06-28', 'This is sample text fro testing.', '2019-06-06 16:45:47', 'All seat filled.', 'Cancelled', '2019-06-15 13:38:38'),
(24, 1, 13, 369910293, '2019-07-20', 'This is sample text for testing. testing Data', '2019-06-06 17:13:08', 'All Rooms were already full. ', 'Cancelled', '2019-06-15 13:39:45'),
(25, 5, 20, 496196975, '2019-06-30', 'This is sample text for testing.', '2019-06-18 18:21:17', 'Your Accomodation is confirmed', 'Confirmed', '2019-06-18 18:22:13'),
(26, 2, 11, 12345678, '2020-01-16', 'arey ', '2020-01-13 15:58:26', 'nahi nahi accha nahu', 'chalega', '2020-01-09 18:30:00'),
(27, 2, 12, 12345745, '2020-01-13', 'arey kasisa ', '2020-01-13 16:22:35', NULL, NULL, NULL),
(28, 2, 20, 783734342, '2020-02-07', 'adwd', '2020-01-13 16:22:59', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

DROP TABLE IF EXISTS `tblcity`;
CREATE TABLE IF NOT EXISTS `tblcity` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `StateID` int(10) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `StateID`, `City`, `CreationDate`) VALUES
(2, 3, 'Banaras', '2019-05-07 08:41:00'),
(3, 3, 'Allahabad', '2019-05-07 08:41:08'),
(4, 3, 'Aligarh', '2019-05-07 08:41:20'),
(5, 3, 'Lucknow', '2019-05-07 08:41:28'),
(6, 2, 'Jaipur', '2019-05-07 08:42:16'),
(7, 8, 'Gangtok', '2019-05-07 08:43:10'),
(8, 8, 'Peeling', '2019-05-07 08:43:25'),
(9, 8, 'Namchi', '2019-05-07 08:43:38'),
(10, 8, 'Ravangla', '2019-05-07 08:43:59'),
(11, 8, 'Mangan', '2019-05-07 08:44:16'),
(12, 2, 'Bhopal', '2019-05-07 08:44:45'),
(13, 2, 'Indore', '2019-05-07 08:44:57'),
(14, 2, 'Indore', '2019-05-07 08:45:10'),
(15, 11, 'Chennai', '2019-06-18 18:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblowner`
--

DROP TABLE IF EXISTS `tblowner`;
CREATE TABLE IF NOT EXISTS `tblowner` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Gender` char(1) DEFAULT 'M',
  `Address` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Aadhar` int(12) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `otp` varchar(10) DEFAULT NULL,
  `active` varchar(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblowner`
--

INSERT INTO `tblowner` (`ID`, `FullName`, `LastName`, `Email`, `MobileNumber`, `Gender`, `Address`, `Password`, `Aadhar`, `RegDate`, `otp`, `active`) VALUES
(1, 'Anurag', 'Upadhyay', 'anuragle100@gmail.com', 7327062264, 'M', '29/11 Joydev road', 'e10adc3949ba59abbe56e057f20f883e', 123412341, '2020-01-13 18:30:24', '12345', '0'),
(4, 'Anurag', 'Upadhyay', 'anurag@gmail.com', 7327062264, 'M', NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, '2020-01-18 09:43:21', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Fulfillment` mediumtext NOT NULL,
  `FutureServices` mediumtext NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`, `Fulfillment`, `FutureServices`) VALUES
(1, 'aboutus', 'About Us', '                                <div style=\"text-align: left;\"><b>PG Accommodation&nbsp;System</b></div><div style=\"text-align: left;\"><br></div><div style=\"text-align: left;\">The aim of pg accommodation system to provide user friendly environment to pg seeker at affordable price. Test data</div>', '2019-06-18 18:15:38', 'The technological revolution in computers has enhanced our abilities to teach. MDS has remained on the cutting edge by instituting the use of computer simulators and remote Web-accessed study material. The company will continue to seek new ways to provide a better and more convenient teaching environment through technology. The virtual class room is a thing of the near future, and we are positioning ourselves to be among the first who will provide such services.', 'The company is in the process of launching a new division for the Seattle office that will encompass training classes for commercial drivers licenses and motorcycle licenses. These services will include comprehensive indoor training classes, job placement assistance for truck and bus drivers, and rented vehicles to practice with, and use for license testing. This program will be launched in 3rd quarter 2004. Depending on its success, management plans to incorporate this program into all the field offices by 3rd quarter 2005..'),
(2, 'contactus', 'Contact Us', '<b>PG Accomodation System</b><div><b>Contact Number:</b>+91-96784532145</div><div><b>email: </b>info@gmail.com</div><div><b>Address : </b>test address</div>', '2019-06-18 18:16:12', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpg`
--

DROP TABLE IF EXISTS `tblpg`;
CREATE TABLE IF NOT EXISTS `tblpg` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `OwnerID` int(20) NOT NULL,
  `StateName` varchar(200) DEFAULT NULL,
  `CityName` varchar(200) DEFAULT NULL,
  `PGTitle` varchar(200) DEFAULT NULL,
  `Type` varchar(120) DEFAULT NULL,
  `RPmonth` varchar(120) DEFAULT NULL,
  `norooms` varchar(45) DEFAULT NULL,
  `Address` varchar(120) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Electricity` varchar(40) DEFAULT NULL,
  `Parking` varchar(40) DEFAULT NULL,
  `Refregerator` varchar(40) DEFAULT NULL,
  `Furnished` varchar(40) DEFAULT NULL,
  `AC` varchar(40) DEFAULT NULL,
  `Balcony` varchar(40) DEFAULT NULL,
  `StudyTable` varchar(40) DEFAULT NULL,
  `Laundry` varchar(40) DEFAULT NULL,
  `Security` varchar(40) DEFAULT NULL,
  `MealsBreakfast` varchar(45) DEFAULT NULL,
  `MealLunch` varchar(45) NOT NULL,
  `MealDinner` varchar(45) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` int(1) DEFAULT NULL,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpg`
--

INSERT INTO `tblpg` (`ID`, `OwnerID`, `StateName`, `CityName`, `PGTitle`, `Type`, `RPmonth`, `norooms`, `Address`, `Image`, `Electricity`, `Parking`, `Refregerator`, `Furnished`, `AC`, `Balcony`, `StudyTable`, `Laundry`, `Security`, `MealsBreakfast`, `MealLunch`, `MealDinner`, `RegDate`, `IsActive`, `LastUpdationDate`) VALUES
(11, 1, 'Utter Pradesh', 'Lucknow', 'Janki Devi PG House', 'Both', '7000', '10', 'Hazrat Ganj D-145 near cant road', '4a4d107c7d7cfa34e099dc3484ade755.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Breakfast', '', '', '2019-05-08 11:29:10', NULL, '2019-06-07 07:23:02'),
(13, 1, 'Madhya Pradesh', 'Indore', 'Sanjay PG House', 'Girls', '5000', '5', 'A-178, Nehru Marg near reliance fresh', '1e6ae4ada992769567b71815f124fac5.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Dinner', '', '', '2019-05-08 12:20:44', NULL, NULL),
(14, 1, 'Utter Pradesh', 'Allahabad', 'KGM PG House', 'Both', '6000', '6', 'D-145678 Near jaharlal nehru road', 'efc1a80c391be252d7d777a437f86870.jpg', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', '', '', '', '2019-05-08 15:45:41', NULL, NULL),
(16, 2, 'Madhya Pradesh', 'Jaipur', 'Baba PG', '', '4000', '5', 'D-124,fhgfytkjuol', 'b9fb9d37bdf15a699bc071ce49baea53.jpg', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'Yes', '2019-05-08 15:49:48', NULL, '2019-06-14 17:55:12'),
(20, 3, 'Tamilnadu', 'Chennai', 'Test PG', '', '10000', '10', 'Chennai', 'ca4851415e6adf8c1f187327c9e5d0fe.jpg', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Yes', '2019-06-18 18:18:15', NULL, '2019-06-18 18:18:57'),
(21, 5, 'Utter Pradesh', 'Banaras', 'Pan', 'Boys', '50000000', '400', 'Silicon Institute of technology, Silicon Hills,Patia', 'bd6f02976ba52ceecea8ebb055000432.PNG', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', '', '', '2020-01-13 17:58:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

DROP TABLE IF EXISTS `tblstate`;
CREATE TABLE IF NOT EXISTS `tblstate` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `StateName` varchar(120) DEFAULT NULL,
  `RegState` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `StateName`, `RegState`) VALUES
(2, 'Madhya Pradesh', '2019-05-07 07:07:03'),
(3, 'Utter Pradesh', '2019-05-07 07:07:21'),
(4, 'Andra Pradesh', '2019-05-07 07:07:31'),
(5, 'Delhi/NCR', '2019-05-07 07:07:39'),
(6, 'Kerala', '2019-05-07 07:07:58'),
(7, 'Arunachal Pradesh', '2019-05-07 07:08:12'),
(8, 'Sikkim', '2019-05-07 07:08:37'),
(9, 'Maharastra', '2019-05-07 07:08:49'),
(10, 'Gujrat', '2019-05-07 07:09:16'),
(11, 'Tamilnadu', '2019-06-18 18:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE IF NOT EXISTS `tbluser` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `FatherName` varchar(120) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `occupation` varchar(200) DEFAULT NULL,
  `ComAddress` varchar(250) DEFAULT NULL,
  `EmergencyNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `otp` varchar(10) DEFAULT NULL,
  `cust` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `lastName`, `Email`, `MobileNumber`, `FatherName`, `dob`, `gender`, `occupation`, `ComAddress`, `EmergencyNumber`, `Password`, `RegDate`, `LastUpdationDate`, `otp`, `cust`) VALUES
(1, 'Anurag', 'Upadhyay', 'anuragle100@gamail.com', 7327062264, 'C.B Upadhyay', '1999-11-07', 'M', 'Student', '29/11 Joydev Road', 111, 'f4435b14dbfe6f69153558c95ce6dc6f', '2020-01-13 14:55:25', '2020-01-12 18:30:00', '123456', 'tu mahana hai'),
(2, 'Raghav', 'ji', 'raghavji1@tutanota.com', 1234567890, 'Anurag Upadhyay', '2020-01-08', 'M', 'Student', 'mere ghar pe', 100, '0f7e44a922df352c05c5f73cb40ba115', '2020-01-13 15:14:20', NULL, '12345', 'hey ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
