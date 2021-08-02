-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 07:32 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11527775_hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'a@gmail.com', '07-10-2019 06:18:02 PM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`, `status`) VALUES
(1, 'Dentist', 1, 1, 500, '2019-10-31', '09:25', '2019-10-01 00:29:02', 1, 0, '', ''),
(2, 'Homeopath', 4, 5, 700, '2019-09-11', '14:10', '2019-09-07 08:02:58', 0, 1, '', ''),
(3, 'Ayurveda', 8, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 1, '', ''),
(5, 'Demo test', 7, 1, 200, '2019-10-04', '9:30 AM', '2019-10-07 06:17:24', 1, 1, '', ''),
(7, 'Demo test', 7, 9, 200, '2019-10-04', '9:30 AM', '2019-10-07 06:25:16', 1, 1, '', 'confirmed'),
(8, 'Homeopath', 2, 8, 600, '2019-10-18', '3:00 PM', '2019-10-07 11:50:38', 1, 1, '', ''),
(9, 'Test', 18, 1, 1000, '2019-10-10', '4:00 PM', '2019-10-07 15:08:28', 1, 1, '', ''),
(10, 'Bones Specialist demo', 17, 9, 509, '2019-10-10', '6:30 PM', '2019-10-07 15:20:06', 1, 1, '', 'confirmed'),
(11, 'Dermatologist', 11, 11, 200, '2019-10-08', '9:45 AM', '2019-10-09 06:31:59', 0, 1, '', ''),
(13, 'Dermatologist', 11, 2, 200, '2019-10-09', '9:45 AM', '2019-10-09 06:38:30', 0, 1, '', 'confirmed'),
(15, 'Test', 18, 9, 1000, '2019-10-19', '11:15 AM', '2019-10-22 08:13:18', 1, 1, '', 'confirmed'),
(17, 'General Physician', 9, 9, 600, '2019-10-26', '3:45 AM', '2019-10-29 00:35:59', 1, 1, '', 'confirmed'),
(18, 'Gynecologist/Obstetrician', 10, 2, 600, '2019-10-29', '4:00 AM', '2019-10-29 00:57:12', 1, 1, '', 'confirmed'),
(19, 'Gynecologist/Obstetrician', 10, 10, 600, '2019-10-29', '4:00 AM', '2019-10-29 02:27:26', 1, 1, '', 'confirmed'),
(20, 'Gynecologist/Obstetrician', 10, 9, 600, '2019-10-26', '5:30 AM', '2019-10-29 02:28:07', 1, 1, '', 'confirmed'),
(21, 'Gynecologist/Obstetrician', 10, 10, 600, '2019-10-26', '6:30 AM', '2019-10-29 03:18:43', 1, 1, '', 'confirmed'),
(22, 'Gynecologist/Obstetrician', 10, 9, 600, '2019-10-26', '6:30 AM', '2019-10-29 03:21:28', 1, 1, '', 'confirmed'),
(23, 'Gynecologist/Obstetrician', 10, 10, 600, '2019-10-27', '6:30 AM', '2019-10-29 03:30:14', 1, 1, '', 'confirmed'),
(24, 'Dentist', 14, 2, 600, '2019-10-29', '10:45 AM', '2019-10-29 07:39:54', 1, 0, '', 'confirmed'),
(25, 'General Physician', 9, 10, 600, '2019-10-27', '12:00 PM', '2019-10-29 08:55:35', 1, 1, '', 'confirmed'),
(26, 'Bones Specialist demo', 17, 9, 509, '2019-11-16', '12:30 PM', '2019-11-07 14:42:28', 1, 1, '', 'not_approved');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Demo test', 'abc ', 'Dedan kimathi', '200', 852888888, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-09-29 06:25:37', '2019-10-07 06:16:46'),
(2, 'Homeopath', 'meshack kimutai', 'Nyeri East', '600', 2147483647, 'meshackkimutai34@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-09-29 06:51:51', '2019-10-07 05:46:19'),
(3, 'General Physician', 'Kiplangat Peter ', 'Meru', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-07 07:43:35', '2019-10-22 08:51:29'),
(4, 'Homeopath', 'Kijana Verma', 'New Nyeri', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-01-07 07:45:09', '2019-10-07 15:32:58'),
(5, 'Ayurveda', 'Joy', 'Gurugram Nyeri', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-07 07:47:07', '2019-10-07 15:31:04'),
(6, 'General Physician', 'Amrita mom', 'New Delhi Nakuru', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-01-07 07:52:50', '2019-10-07 15:31:35'),
(7, 'Demo test', 'abc ', 'New Delhi kericho', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-07 08:08:58', '2019-10-07 15:32:16'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2019-06-23 18:06:06'),
(9, 'General Physician', 'chelaa', 'Comet,sotik', '600', 714852907, 'chelaa@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 06:21:32', NULL),
(10, 'Gynecologist/Obstetrician', 'naomi', 'Nyeri corner 12', '600', 714852917, 'naomi@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 06:32:51', NULL),
(11, 'Dermatologist', 'neema', 'mweiga cenral', '200', 718908494, 'neema@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 06:35:56', NULL),
(12, 'Homeopath', 'nehemia', 'Immaculate mweii', '1000', 708576774, 'nehemia@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 06:38:20', NULL),
(13, 'Ayurveda', 'gideon', 'Embassy west', '800', 718908498, 'gideon@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 06:44:39', NULL),
(14, 'Dentist', 'eli', 'kiganjo south see', '600', 7098765432, 'eli@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 06:52:39', NULL),
(15, 'Ear-Nose-Throat (Ent) Specialist', 'deno', 'Kiganyo south see siwathiga', '8000', 718908494, 'deno@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 14:42:35', NULL),
(16, 'Demo test', 'vicoty', '0718908494', '300', 718908494, 'vicoty@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 14:47:20', NULL),
(17, 'Bones Specialist demo', 'juddy', 'mazidisha mashani', '509', 718908494, 'juddy@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 14:50:21', NULL),
(18, 'Test', 'Daizy', 'Kaptembo kabiruini 101 518', '1000', 709876432, 'Daizy@gmail.com', '631577fc0428c1dbc6176a3ca5935f77', '2019-10-07 14:51:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', 0x30000000000000000000000000000000, '2019-01-06 05:53:31', '', 1),
(2, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-10-23 06:36:07', '', 0),
(3, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-10 06:36:37', '06/10/2019 07:36:45', 1),
(4, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-06 06:41:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-06 06:55:16', '06-01-2019 12:27:47 PM', 1),
(6, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-09-06 07:07:12', '', 0),
(7, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2019-10-07 08:04:42', '', 0),
(8, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2019-09-07 08:04:55', '22-10-2019 03:12:26 PM', 0),
(9, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 08:05:54', '07-10-2019 11:57:39 AM', 1),
(10, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2019-06-23 18:15:31', '23-06-2019 11:47:36 PM', 1),
(11, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2019-10-07 05:52:09', NULL, 1),
(12, 7, 'Test@demo.com', 0x3a3a3100000000000000000000000000, '2019-10-07 06:09:31', NULL, 1),
(13, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 06:23:30', NULL, 1),
(14, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 06:28:21', NULL, 1),
(15, 10, 'naomi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 12:15:13', '07-10-2019 05:51:37 PM', 1),
(16, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2019-10-07 14:06:47', NULL, 0),
(17, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 14:38:49', NULL, 1),
(18, NULL, 'na', 0x3a3a3100000000000000000000000000, '2019-10-09 06:04:46', NULL, 0),
(19, 10, 'naomi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:04:55', NULL, 1),
(20, 11, 'neema@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:20:34', NULL, 1),
(21, 11, 'neema@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:35:00', NULL, 1),
(22, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:37:00', '09-10-2019 12:07:41 PM', 1),
(23, 11, 'neema@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:39:16', NULL, 1),
(24, NULL, 'charo@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-15 06:43:17', NULL, 0),
(25, NULL, 'charo@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-15 06:43:31', NULL, 0),
(26, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-15 06:43:39', '22-10-2019 01:43:55 PM', 1),
(27, NULL, 'Daizy@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 07:20:55', NULL, 0),
(28, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2019-10-22 07:21:30', NULL, 0),
(29, NULL, 'Daizy@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 07:21:56', NULL, 0),
(30, 18, 'Daizy@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 08:10:42', NULL, 1),
(31, 18, 'Daizy@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 08:14:46', NULL, 1),
(32, NULL, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 08:52:41', NULL, 0),
(33, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 08:53:01', NULL, 1),
(34, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 10:22:33', NULL, 1),
(35, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-28 14:54:49', NULL, 1),
(36, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 00:39:11', NULL, 1),
(37, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 00:57:40', '29-10-2019 08:29:49 AM', 1),
(38, 10, 'naomi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 01:08:47', NULL, 1),
(39, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 03:00:06', '29-10-2019 08:30:26 AM', 1),
(40, 10, 'naomi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 03:01:05', NULL, 1),
(41, 10, 'naomi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 03:21:50', NULL, 1),
(42, NULL, 'eli@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 07:42:05', NULL, 0),
(43, 14, 'eli@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 07:42:30', '29-10-2019 01:35:50 PM', 1),
(44, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 08:09:21', NULL, 1),
(45, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 08:42:44', '29-10-2019 02:24:57 PM', 1),
(46, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 08:55:53', NULL, 1),
(47, 9, 'chelaa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-06 19:51:51', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2019-09-28 06:37:25', '2019-09-30 21:00:00'),
(2, 'General Physician', '2019-09-28 06:38:12', '2019-09-30 21:00:00'),
(3, 'Dermatologist', '2019-09-28 06:38:48', '2019-09-30 21:00:00'),
(4, 'Homeopath', '2019-09-28 06:39:26', '2019-09-30 21:00:00'),
(5, 'Ayurveda', '2019-09-28 06:39:51', '2019-09-30 21:00:00'),
(6, 'Dentist', '2019-09-28 06:40:08', '2019-09-30 21:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2019-09-28 06:41:18', '2019-10-01 21:00:00'),
(9, 'Demo test', '2019-09-28 07:37:39', '2019-10-01 21:00:00'),
(10, 'Bones Specialist demo', '2019-09-07 08:07:53', '2019-10-07 15:26:12'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'eye', '2019-10-15 06:45:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Dennis kiprop', 'phpgurukulofficial@gmail.com', 714852907, 'Our medical service provision center is doing creat that is good. ', '2019-06-30 13:06:50', 'yes', '2019-10-22 08:24:46', 1),
(3, 'cristine', 'cristine@gmail.com', 723456789, ' I am so great to your hospital my son got well', '2019-10-15 07:01:02', 'Welcome  cristine', '2019-10-15 07:01:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', 0x3a3a3100000000000000000000000000, '2019-10-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2019-09-06 07:04:28', '', 1),
(8, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-10-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:10:09', '07-10-2019 08:38:54 PM', 1),
(11, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 6, 'tetuser@gmail.com', 0x3a3a3100000000000000000000000000, '2019-06-23 18:30:16', '24-06-2019 12:10:17 AM', 1),
(16, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 05:52:32', '07-10-2019 11:29:03 AM', 1),
(17, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2019-10-07 05:59:16', NULL, 0),
(18, NULL, 'Lorraine chepkemoi', 0x3a3a3100000000000000000000000000, '2019-10-07 06:00:32', NULL, 0),
(19, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 06:05:29', NULL, 1),
(20, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 06:25:19', NULL, 1),
(21, 8, 'chrisfit@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 10:14:32', NULL, 1),
(22, NULL, 'nehemia@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 11:58:06', NULL, 0),
(23, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 11:58:38', '07-10-2019 05:34:21 PM', 1),
(24, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 12:05:35', NULL, 1),
(25, NULL, 'salama@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 15:17:13', NULL, 0),
(26, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-07 15:18:26', NULL, 1),
(27, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:06:12', NULL, 1),
(28, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:16:34', NULL, 1),
(29, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:35:44', NULL, 1),
(30, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:38:05', NULL, 1),
(31, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-09 06:48:00', NULL, 1),
(32, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-15 04:59:36', '15-10-2019 12:12:58 PM', 1),
(33, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 08:11:38', '22-10-2019 03:12:21 PM', 1),
(34, NULL, 'Daizy@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 08:14:13', NULL, 0),
(35, NULL, 'Daizy@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 08:14:16', NULL, 0),
(36, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 08:47:16', NULL, 1),
(37, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-22 10:18:13', NULL, 1),
(38, NULL, 'Amos', 0x3a3a3100000000000000000000000000, '2019-10-28 14:40:37', NULL, 0),
(39, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-28 14:49:40', NULL, 1),
(40, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 00:35:16', '29-10-2019 06:08:02 AM', 1),
(41, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 00:56:54', NULL, 1),
(42, NULL, 'naomi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 02:27:35', NULL, 0),
(43, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 02:27:48', NULL, 1),
(44, NULL, 'vicoty@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 03:15:01', NULL, 0),
(45, 10, 'nickii@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 03:18:09', '29-10-2019 08:50:39 AM', 1),
(46, NULL, 'salama@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 03:20:53', NULL, 0),
(47, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 03:21:04', NULL, 1),
(48, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 06:31:06', NULL, 1),
(49, 2, 'Lorrainechepkemoi@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 07:39:05', '29-10-2019 01:11:17 PM', 1),
(50, 10, 'nickii@gmail.com', 0x3a3a3100000000000000000000000000, '2019-10-29 08:55:14', NULL, 1),
(51, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-05 09:48:56', NULL, 1),
(52, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-05 15:26:34', '05-11-2019 08:56:44 PM', 1),
(53, 9, 'solomon@gmail.com', 0x3a3a3100000000000000000000000000, '2019-11-07 14:41:36', '07-11-2019 08:12:41 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Amos', 'C028-01-1157/2014', 'Bomaa,Alexandria hostel, Rm101', 'male', 'info@w3gang.com', '5c428d8875d2948607f3e3fe134d71b4', '2019-09-26 07:03:09', '2019-10-28 14:48:50'),
(2, 'Lorraine chepkemoi', 'C027-01-1247/2018', 'Catholic hostels,Block D, Rm 101', 'female', 'Lorrainechepkemoi@gmail.com', 'd47c5d15dec4b08e185615a5073bb8ab', '2019-09-30 05:34:39', '2019-10-07 15:22:37'),
(3, 'Amit', 'C023-01-1155/2010', 'Town,Nyakilo along KCB bank road,Kamakwa hostel ,Rm 18', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-08-07 06:36:53', '2019-10-03 21:00:00'),
(4, 'Rahul Singh', 'C035-01-1143/2018', 'Nyeri View ,First street,new Light hostel, Rm 1', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-09-07 07:41:14', '2019-10-07 15:03:53'),
(5, 'Amit kumar', 'C025-01-1146/2016', 'Embassy,Jutma,Rm 16', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-09-07 08:00:26', '2019-10-01 21:00:00'),
(6, 'Test user', 'C022-01-1015/2016', 'nyaribo,old city hostels,Rm 13', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-06-23 18:24:53', '2019-10-07 15:04:59'),
(8, 'Chrisfit', 'C025-01-1009/2017', 'Bomaa,Verity hostels,Rm 10', 'male', 'chrisfit@gmail.com', 'd47c5d15dec4b08e185615a5073bb8ab', '2019-10-07 10:13:44', NULL),
(9, 'Solomon Kings', 'C025-01-1140/2016', 'Nyaribo,Kumbavani hostels, Rm 10', 'male', 'solomon@gmail.com', 'd47c5d15dec4b08e185615a5073bb8ab', '2019-10-07 15:16:47', NULL),
(10, 'nickii', 'C025-01-1230/2019', 'bomaas', 'female', 'nickii@gmail.com', 'd47c5d15dec4b08e185615a5073bb8ab', '2019-10-29 03:17:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
