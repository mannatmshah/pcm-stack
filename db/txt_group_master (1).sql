
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 50.63.237.34
-- Generation Time: May 17, 2020 at 08:19 AM
-- Server version: 5.0.96
-- PHP Version: 5.1.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `textile`
--

-- --------------------------------------------------------

--
-- Table structure for table `txt_group_master`
--

CREATE TABLE `txt_group_master` (
  `group_id` int(10) unsigned NOT NULL auto_increment,
  `group_name` varchar(100) default NULL,
  `group_desc` varchar(200) default NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `txt_group_master`
--

INSERT INTO `txt_group_master` VALUES(2, 'Arihant', 'Arihant Syntex Ahmedabad');
INSERT INTO `txt_group_master` VALUES(3, 'ShriChamundaSuiting', 'Shri Chamunda Suiting Ahmedabad');
INSERT INTO `txt_group_master` VALUES(4, 'Butterfly', 'Disha Enterprises Indore');
INSERT INTO `txt_group_master` VALUES(5, 'NoGroup', 'General');
INSERT INTO `txt_group_master` VALUES(6, 'Shaswat', 'Shaswat Textiles Ahmedabad');
INSERT INTO `txt_group_master` VALUES(7, 'Sita', 'Sita Fabrics Ahmedabad');
INSERT INTO `txt_group_master` VALUES(8, 'Sekhani', 'Sekhani Fabrics Ahmedabad');
INSERT INTO `txt_group_master` VALUES(9, 'Prabhat', 'Laxmi Silk Mills');
INSERT INTO `txt_group_master` VALUES(10, 'Bhavna', 'Bhavna Impex Ahmedabad');
INSERT INTO `txt_group_master` VALUES(11, 'Amruta', 'Amruta Ahmedabad');
INSERT INTO `txt_group_master` VALUES(12, 'Baradia', 'Baradia Ahmedabad');
INSERT INTO `txt_group_master` VALUES(13, 'Montex', 'Montex Mumbai');
INSERT INTO `txt_group_master` VALUES(14, 'Y2K', 'Y2K Fashion Mumbai');
INSERT INTO `txt_group_master` VALUES(15, 'Fashionista', 'Fashionista Mumbai');
INSERT INTO `txt_group_master` VALUES(16, 'Klassic', 'Klassic Mumbai');
INSERT INTO `txt_group_master` VALUES(17, 'SeshmalDipchand', 'Seshmal Dipchand Mumbai');
INSERT INTO `txt_group_master` VALUES(18, 'Emkay', 'Emkay Suiting and Shirting Ahmedabad');
INSERT INTO `txt_group_master` VALUES(19, 'Aavali', 'Aavali Prints Ahmedabad');
INSERT INTO `txt_group_master` VALUES(20, 'LR', 'L R Fabrics Ahmedabad');
INSERT INTO `txt_group_master` VALUES(21, 'IS', 'Ishwardas Sagarmal');
INSERT INTO `txt_group_master` VALUES(22, 'PG-JituBhai', 'Jitu Bhai');
INSERT INTO `txt_group_master` VALUES(23, 'Rishabh', 'Rishabh Fab Ahmedabad');
INSERT INTO `txt_group_master` VALUES(24, 'Prakash', 'Prakash Ahmedabad');
INSERT INTO `txt_group_master` VALUES(25, 'Suprimo', 'Suprimo Ahmedabad');
INSERT INTO `txt_group_master` VALUES(26, 'MGEE', 'MGEE Ahmedabad');
INSERT INTO `txt_group_master` VALUES(27, 'Nakoda', 'Nakoda Fashion Ahmedabad');
INSERT INTO `txt_group_master` VALUES(28, 'Navkar-DixitBhai', 'Navkar Ahmedabad');
INSERT INTO `txt_group_master` VALUES(29, 'Charchit', 'Charchit Indore');
INSERT INTO `txt_group_master` VALUES(30, 'BGD', 'BGD Indore');
INSERT INTO `txt_group_master` VALUES(31, 'Chandan', 'Chandan Indore');
INSERT INTO `txt_group_master` VALUES(32, 'KNitin', 'K Nitin Indore');
INSERT INTO `txt_group_master` VALUES(33, 'Mikado', 'Fashion Clothing Indore');
INSERT INTO `txt_group_master` VALUES(34, 'KS', 'K S Garments Indore');
INSERT INTO `txt_group_master` VALUES(35, 'MiniKids', 'Mini Kids Indore');
INSERT INTO `txt_group_master` VALUES(36, 'Manan', 'Manan Indore');
INSERT INTO `txt_group_master` VALUES(37, 'MJ', 'Manan Junior Indore');
INSERT INTO `txt_group_master` VALUES(38, 'ManishDresses', 'Manish Dresses Indore');
INSERT INTO `txt_group_master` VALUES(39, 'SKVK', 'Sachinkumar Vipinkumar Indore');
INSERT INTO `txt_group_master` VALUES(40, 'VasuClothing', 'Vasu Clothing Indore');
INSERT INTO `txt_group_master` VALUES(41, 'VasuLifestyle', 'Vasu Lifestyle Indore');
INSERT INTO `txt_group_master` VALUES(42, 'Vazir', 'Vazir Dresses Indore');
INSERT INTO `txt_group_master` VALUES(43, 'Mehta', 'Mehta Creation');
INSERT INTO `txt_group_master` VALUES(44, 'Disha', 'Disha Clothing Mumbai');
INSERT INTO `txt_group_master` VALUES(45, 'Century', 'Century Mumbai');
INSERT INTO `txt_group_master` VALUES(46, 'Hyper', 'Hyper Mumbai');
INSERT INTO `txt_group_master` VALUES(47, 'Sankeshwar', 'Sankeshwar Mumbai');
INSERT INTO `txt_group_master` VALUES(48, 'Amardeep', 'Amardeep Ichalkaranji');
INSERT INTO `txt_group_master` VALUES(49, 'Berawala', 'Berawala Ahmedabad');
INSERT INTO `txt_group_master` VALUES(50, 'ShriAnand', 'Shri Anand Textiles Indore');
INSERT INTO `txt_group_master` VALUES(51, 'Pakiza', 'Pakiza Fashion Indore');
INSERT INTO `txt_group_master` VALUES(52, 'Mewa', 'Mewa Ahmedabad');
INSERT INTO `txt_group_master` VALUES(53, 'Manita', 'Manita Ahmedabad');
INSERT INTO `txt_group_master` VALUES(54, 'TransportAhmedabad', 'Ahmedabad  Transport');
INSERT INTO `txt_group_master` VALUES(55, 'TransportMumbai', 'Transport Mumbai');
INSERT INTO `txt_group_master` VALUES(56, 'TransportIchalkaranji', 'Transport Ichalkaranji');
INSERT INTO `txt_group_master` VALUES(57, 'Transport', 'Transport General');
INSERT INTO `txt_group_master` VALUES(58, 'Chinar', 'Chinar Shirts');
INSERT INTO `txt_group_master` VALUES(59, 'Courier', 'Courier');
INSERT INTO `txt_group_master` VALUES(60, 'DT', 'Devendra Textiles');
