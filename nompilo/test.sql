-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 13, 2021 at 09:37 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tble_admin`
--

DROP TABLE IF EXISTS `tble_admin`;
CREATE TABLE IF NOT EXISTS `tble_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE IF NOT EXISTS `tbl_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `fname`, `lname`, `email`, `password`) VALUES
(32, 'athi', 'surname', 'athi@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

DROP TABLE IF EXISTS `tbl_item`;
CREATE TABLE IF NOT EXISTS `tbl_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` text NOT NULL,
  `picture` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`id`, `name`, `description`, `price`, `picture`) VALUES
(1, 'Modern Chair', 'Has long brown legs and a soft white cushion great for the guests', '800', '1.jpg'),
(2, 'Minimalistic Plant Pot', 'A big white pot plant to be able to put in inside medium sized plants ', '2000', '2.jpg'),
(3, 'Modern Chair 2', 'A luxurias small white chair with no cushion', '800', '3.jpg'),
(4, 'Night Stand', 'Small sized night stand has lots of room and doesnt take much room', '3000', '4.jpg'),
(5, 'Plant Pot', 'A small marble plant pot for small plants', '8500', '5.jpg'),
(6, 'Small Table', 'Small short table with short thin legs and white', '500', '6.jpg'),
(7, 'Metallic Chair', 'A small white chair with white leather  cushion and with white small meta legs ', '600', '7.jpg'),
(8, 'Modern Rocking Chair', 'A Modern Rocking Chair with wooden rocking legs and a large comfortable cushion', '4000', '8.jpg'),
(9, 'Home Deco', 'A small decoration  item that can be hanged in the interior walls', '150', '9.jpg'),
(10, 'Bedroom night stand', 'A compact size night stand with 4 drawers to store personal items', '5000', '10.jpg'),
(11, 'Modern chair 3', 'A small chair with a large navy cushion and small wooden legs good for a library or study', '4000', '11.jpg'),
(12, 'Round family couch ', 'A large round family couch that more than 2 people can sit on it and itssoft and comfortable', '8000', '12.jpg'),
(13, 'Bathroom wall stand', 'A stand that will be drilled on the bath room wall that is specious to hold cosmetic . towels and robes ', '4000', '13.jpg'),
(14, 'Counter chair', 'A small counter chair good for the kids to use or in the dinning hall has small brown legs', '2000', '14.jpg'),
(15, 'Large modern sofa', 'A large comfortable sofa that is very comfortable and navy', '22000', '15.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
