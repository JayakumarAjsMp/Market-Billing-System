-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2017 at 02:43 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9-2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `billing`
--
CREATE DATABASE `billing` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `billing`;

-- --------------------------------------------------------

--
-- Table structure for table `billno`
--

CREATE TABLE IF NOT EXISTS `billno` (
  `no` int(200) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2053 ;

--
-- Dumping data for table `billno`
--

INSERT INTO `billno` (`no`) VALUES
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020),
(2021),
(2022),
(2023),
(2024),
(2025),
(2026),
(2027),
(2028),
(2029),
(2030),
(2031),
(2032),
(2033),
(2034),
(2035),
(2036),
(2037),
(2038),
(2039),
(2040),
(2041),
(2042),
(2043),
(2044),
(2045),
(2046),
(2047),
(2048),
(2049),
(2050),
(2051),
(2052);

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE IF NOT EXISTS `cost` (
  `iid` int(100) NOT NULL AUTO_INCREMENT,
  `iname` varchar(40) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `icost` int(100) DEFAULT NULL,
  `gst` int(100) DEFAULT '5',
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101007 ;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`iid`, `iname`, `company`, `icost`, `gst`) VALUES
(101001, 'Atta - Whole Wheat', 'Aashirvaad', 372, 5),
(101002, 'Whole Wheat Atta', 'bb Royal', 329, 5),
(101003, 'Whole Wheat Atta', 'Patanjali', 168, 5),
(101004, 'Atta - Chakki Fresh', 'Pillsbury', 369, 5),
(101006, 'hjhfjghjfw', 'hdsjds', 343, 8),
(101005, 'hjhfjghjf', 'h', 877, 16);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `billno` int(20) NOT NULL,
  `items` mediumtext NOT NULL,
  `price` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billno` (`billno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `billno`, `items`, `price`, `date`) VALUES
(1, 2001, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:09:50pm'),
(2, 2002, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:52:24pm'),
(3, 2003, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:52:43pm'),
(4, 2004, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:52:57pm'),
(5, 2005, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:54:22pm'),
(6, 2006, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:54:34pm'),
(7, 2007, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:54:52pm'),
(8, 2008, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:56:19pm'),
(9, 2009, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:58:22pm'),
(10, 2010, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 03:59:31pm'),
(11, 2011, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:01:46pm'),
(12, 2012, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:02:37pm'),
(13, 2013, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:03:35pm'),
(14, 2014, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:05:44pm'),
(15, 2015, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:10:46pm'),
(16, 2016, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:12:03pm'),
(17, 2017, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:12:20pm'),
(18, 2018, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:12:45pm'),
(19, 2019, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:13:10pm'),
(20, 2020, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:13:23pm'),
(21, 2021, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:13:56pm'),
(22, 2022, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:14:18pm'),
(23, 2023, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:14:26pm'),
(24, 2024, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:14:43pm'),
(25, 2025, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:15:14pm'),
(26, 2026, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:15:25pm'),
(27, 2027, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:15:49pm'),
(28, 2028, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:16:17pm'),
(29, 2029, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:16:30pm'),
(30, 2030, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:24:43pm'),
(31, 2031, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:25:09pm'),
(32, 2032, ' Atta - Whole Wheat=3', '1116', '27th  July 2017 04:26:05pm'),
(33, 2033, ' Atta - Whole Wheat=2 Whole Wheat Atta=3 Whole Wheat Atta=7', '2907', '27th  July 2017 04:29:37pm'),
(34, 2034, ' Atta - Whole Wheat=6 Whole Wheat Atta=4 Atta - Chakki Fresh=3 Whole Wheat Atta=2 Whole Wheat Atta=3 Atta - Whole Wheat=2', '6722', '27th  July 2017 04:30:48pm'),
(35, 2035, ' Atta - Whole Wheat=6 Whole Wheat Atta=4 Atta - Chakki Fresh=3 Whole Wheat Atta=2 Whole Wheat Atta=3 Atta - Whole Wheat=2', '6722', '27th  July 2017 04:30:57pm'),
(36, 2036, '', '0', '27th  July 2017 04:33:51pm'),
(37, 2037, '', '0', '27th  July 2017 04:36:29pm'),
(38, 2038, '', '0', '27th  July 2017 04:36:40pm'),
(39, 2039, '', '0', '27th  July 2017 04:38:12pm'),
(40, 2040, '', '0', '27th  July 2017 04:38:15pm'),
(41, 2041, '', '0', '27th  July 2017 04:38:47pm'),
(42, 2042, '', '0', '27th  July 2017 04:40:02pm'),
(43, 2043, '', '0', '27th  July 2017 04:40:03pm'),
(44, 2044, '', '0', '27th  July 2017 04:40:23pm'),
(45, 2045, '', '0', '27th  July 2017 04:40:30pm'),
(46, 2046, '', '0', '27th  July 2017 04:40:32pm'),
(47, 2047, '', '0', '27th  July 2017 04:40:35pm'),
(48, 2048, '', '0', '27th  July 2017 04:41:04pm'),
(49, 2049, ' Atta - Whole Wheat=2', '744', '27th  July 2017 07:38:44pm'),
(50, 2050, ' Atta - Whole Wheat=2', '744', '27th  July 2017 07:46:22pm'),
(51, 2051, '', '0', '27th  July 2017 07:52:14pm');
