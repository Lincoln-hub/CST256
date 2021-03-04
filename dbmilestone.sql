-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2021 at 05:08 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmilestone`
--

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `NAME`) VALUES
(2, 'C# Engineers'),
(8, 'PHP Laravel'),
(11, 'Python Engineers');

-- --------------------------------------------------------

--
-- Table structure for table `groupuser`
--

CREATE TABLE `groupuser` (
  `ID` int(11) NOT NULL,
  `GROUPID` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupuser`
--

INSERT INTO `groupuser` (`ID`, `GROUPID`, `USERID`) VALUES
(20, 2, 20),
(24, 8, 20),
(26, 11, 20),
(28, 11, 24);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`ID`, `DESCRIPTION`) VALUES
(3, 'Software Engineer'),
(9, 'Software Engineer - Google');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `ID` int(11) NOT NULL,
  `EDUCATION` varchar(200) NOT NULL,
  `WORKHISTORY` varchar(500) NOT NULL,
  `SKILLS` varchar(500) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`ID`, `EDUCATION`, `WORKHISTORY`, `SKILLS`, `USERID`) VALUES
(4, 'AWS', 'Grand Canyon University', 'Problem Solving, Team Player', 20),
(7, 'AWS', 'Grand Canyon University', 'Problem Solving, Team Player', 22),
(8, '', '', '', 23),
(9, 'Google for 5 years', 'Grand Canyon University', 'Problem Solving, Team Player, PHP', 23),
(10, '', '', '', 24),
(11, 'Google for 5 years', 'Grand Canyon University', 'Problem Solving, Team Player, PHP, Java....etc', 24);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(100) NOT NULL,
  `LASTNAME` varchar(100) NOT NULL,
  `USERNAME` varchar(100) NOT NULL,
  `AGE` int(11) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `ROLE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `FIRSTNAME`, `LASTNAME`, `USERNAME`, `AGE`, `EMAIL`, `PASSWORD`, `ROLE`) VALUES
(13, 'Lincoln', 'Munago', 'Lincoln', 200, 'LMunago@my.gcu.edu', 'Munago', 'Admin'),
(18, 'Cosimo', 'Medici', 'Cosimo', 200, 'lincolnmunago@yahoo.com', 'Medici', 'suspended'),
(19, 'Lorenzo', 'Medici', 'Lorenzo', 3000, 'LMunago@my.gcu.edu', 'Medici', 'suspended'),
(20, 'Piero', 'Medici', 'Piero', 200, 'Lincoln.Munago@gcu.edu', 'Medici', NULL),
(21, 'Lorenzo', 'Medici', 'Lorenzo', 533, 'LMunago@my.gcu.edu', 'Medici', NULL),
(22, 'Franco', 'Medici', 'Franco', 533, 'lincolnmunago@yahoo.com', 'Medici', NULL),
(23, 'Lincoln', 'Medici', 'Linc', 5000, 'LMunago@my.gcu.edu', 'Medici', NULL),
(24, 'Thomas', 'Medici', 'Thomas', 7000, 'lincolnmunago@yahoo.com', 'Medici', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `groupuser`
--
ALTER TABLE `groupuser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GROUPID` (`GROUPID`),
  ADD KEY `UID` (`USERID`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `groupuser`
--
ALTER TABLE `groupuser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `groupuser`
--
ALTER TABLE `groupuser`
  ADD CONSTRAINT `GROUPID` FOREIGN KEY (`GROUPID`) REFERENCES `group` (`ID`),
  ADD CONSTRAINT `UID` FOREIGN KEY (`USERID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `USERID` FOREIGN KEY (`USERID`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
