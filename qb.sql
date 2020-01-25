-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 19, 2018 at 11:11 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `branch location` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `phone`, `branch location`) VALUES
('Samarth', '123', '9686027982', 'KS Layout'),
('Nick', '12345', '3218837546', 'JP Nagar'),
('Sonu', '776555', '9468246892', 'Kanakpura'),
('Kirti', '86444', '9536825736', 'RK Puram'),
('Tushar', '222455', '9953788899', 'Kormangala'),
('Drishey', '123456', '9718164350', 'Jayanagar');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `bno` int(20) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `amt` int(20) NOT NULL,
  `pdate` date NOT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bno`, `cname`, `amt`, `pdate`) VALUES
(1, 'Nikhil', 180, '2018-11-18'),
(2, 'Sanidhya', 95, '2018-11-18'),
(3, 'Nidhi', 252, '2018-11-18'),
(4, 'Kiara', 850, '2018-11-18'),
(5, 'Sudha', 540, '2018-11-18'),
(6, 'Jyoti', 1170, '2018-11-18'),
(7, 'Sandeep', 353, '2018-11-18'),
(8, 'Sofia', 630, '2018-11-19'),
(9, 'Sunny', 76, '2018-11-19');

--
-- Triggers `bill`
--
DROP TRIGGER IF EXISTS `after_bill_insert`;
DELIMITER $$
CREATE TRIGGER `after_bill_insert` AFTER INSERT ON `bill` FOR EACH ROW BEGIN
INSERT INTO bill_backup VALUES(NEW.bno, NEW.cname, NEW.amt, NEW.pdate);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bill_backup`
--

DROP TABLE IF EXISTS `bill_backup`;
CREATE TABLE IF NOT EXISTS `bill_backup` (
  `bno` int(20) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `amt` int(20) NOT NULL,
  `pdate` date NOT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_backup`
--

INSERT INTO `bill_backup` (`bno`, `cname`, `amt`, `pdate`) VALUES
(1, 'Nikhil', 180, '2018-11-18'),
(2, 'Sanidhya', 95, '2018-11-18'),
(3, 'Nidhi', 252, '2018-11-18'),
(4, 'Kiara', 850, '2018-11-18'),
(5, 'Sudha', 540, '2018-11-18'),
(6, 'Jyoti', 1170, '2018-11-18'),
(7, 'Sandeep', 353, '2018-11-18'),
(8, 'Sofia', 630, '2018-11-19'),
(9, 'Sunny', 1600, '2018-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

DROP TABLE IF EXISTS `cash`;
CREATE TABLE IF NOT EXISTS `cash` (
  `id` int(20) NOT NULL,
  `name` varchar(15) NOT NULL,
  `mno` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`id`, `name`, `mno`, `address`, `email`, `password`) VALUES
(1, 'Priya Singh', '9999800102', 'Vizag', 'priya', '123'),
(2, 'Sonu', '8854998247', 'Bhilai', 'soniasahu@gmail.com', '1234567'),
(4, 'Sunil', '9873605092', 'Delhi', 'sunil555@gmail.com', '5622'),
(5, 'Anand', '9654348411', 'Faridabad', 'and004@gmail.com', '5512'),
(6, 'Mansi', '9911355140', 'Kolkata', 'mansi22@gmail.com', 'manu@112'),
(7, 'Surbhi ', '9999755901', 'Sohna', 'surkir42@gmal.com', '1154'),
(8, 'Nihal', '9718164350', 'Bengaluru', 'nihal22@gmail.com', 'nihal999');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(15) NOT NULL,
  `pname` varchar(15) NOT NULL,
  `available` int(10) NOT NULL,
  `mrp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `pname`, `available`, `mrp`) VALUES
(2000, 'Soap', 45, 40),
(2001, 'Shampoo', 99, 190),
(2002, 'Detergent', 46, 140),
(2003, 'Biscuit', 37, 20),
(2004, 'Namkeen', 48, 40),
(2005, 'Sugar', 30, 44),
(2006, 'Coffee', 35, 15),
(2007, 'Flour', 50, 300),
(2008, 'Bread', 10, 18),
(2009, 'Flakes', 60, 180),
(2010, 'Noodles', 44, 22),
(2011, 'Soup', 25, 10),
(2012, 'Honey', 30, 70),
(2013, 'Nutella', 65, 120),
(2014, 'Bedsheet', 194, 500),
(2015, 'Towel', 150, 250),
(2016, 'Handkerchief', 120, 20),
(2017, 'Shoes', 180, 700),
(2018, 'Headsets', 100, 400),
(2019, 'Bluetooth', 48, 350),
(2020, 'Soft Toy', 57, 200),
(2021, 'Bat', 40, 550),
(2022, 'Basketball', 29, 600),
(2023, 'Football', 70, 500),
(2024, 'Tennis Ball', 120, 20),
(2025, 'Racket', 70, 220);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `sid` int(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `pid` int(20) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `price` int(20) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sid`, `sname`, `pid`, `pname`, `price`) VALUES
(1, 'Patanjali', 2003, 'Biscuit', 15),
(1, 'Patanjali', 2000, 'Soap', 30),
(6, 'Nirma', 2001, 'Shampoo', 70),
(2, 'Haldirams', 2004, 'Namkeen', 50),
(3, 'Ashirwad', 2007, 'Flour', 199),
(5, 'Britania', 2008, 'Bread', 12),
(4, 'Maggie', 2009, 'Flakes', 120),
(2, 'Haldirams', 2012, 'Honey', 50),
(6, 'Nirma', 2002, 'Detergent', 120),
(4, 'Maggie', 2010, 'Noodles', 18),
(1, 'Patanjali', 2011, 'Soup', 7),
(5, 'Britania', 2013, 'Nutella', 99),
(5, 'Britania', 2006, 'Coffee', 10),
(1, 'Patanjali', 2005, 'Sugar', 35),
(7, 'Adidas', 2017, 'Shoes', 500),
(7, 'Adidas', 2021, 'Bat', 400),
(8, 'Jockey', 2014, 'Bedsheet', 400);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
