
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 50.63.237.34
-- Generation Time: May 17, 2020 at 08:22 AM
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
-- Table structure for table `txt_states`
--

CREATE TABLE `txt_states` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `state` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `txt_states`
--

INSERT INTO `txt_states` VALUES(1, 'ANDAMAN AND NICOBAR ISLANDS');
INSERT INTO `txt_states` VALUES(2, 'ANDHRA PRADESH');
INSERT INTO `txt_states` VALUES(3, 'ARUNACHAL PRADESH');
INSERT INTO `txt_states` VALUES(4, 'ASSAM');
INSERT INTO `txt_states` VALUES(5, 'BIHAR');
INSERT INTO `txt_states` VALUES(6, 'CHATTISGARH');
INSERT INTO `txt_states` VALUES(7, 'CHANDIGARH');
INSERT INTO `txt_states` VALUES(8, 'DAMAN AND DIU');
INSERT INTO `txt_states` VALUES(9, 'DELHI');
INSERT INTO `txt_states` VALUES(10, 'DADRA AND NAGAR HAVELI');
INSERT INTO `txt_states` VALUES(11, 'GOA');
INSERT INTO `txt_states` VALUES(12, 'GUJARAT');
INSERT INTO `txt_states` VALUES(13, 'HIMACHAL PRADESH');
INSERT INTO `txt_states` VALUES(14, 'HARYANA');
INSERT INTO `txt_states` VALUES(15, 'JAMMU AND KASHMIR');
INSERT INTO `txt_states` VALUES(16, 'JHARKHAND');
INSERT INTO `txt_states` VALUES(17, 'KERALA');
INSERT INTO `txt_states` VALUES(18, 'KARNATAKA');
INSERT INTO `txt_states` VALUES(19, 'LAKSHADWEEP');
INSERT INTO `txt_states` VALUES(20, 'MEGHALAYA');
INSERT INTO `txt_states` VALUES(21, 'MAHARASHTRA');
INSERT INTO `txt_states` VALUES(22, 'MANIPUR');
INSERT INTO `txt_states` VALUES(23, 'MADHYA PRADESH');
INSERT INTO `txt_states` VALUES(24, 'MIZORAM');
INSERT INTO `txt_states` VALUES(25, 'NAGALAND');
INSERT INTO `txt_states` VALUES(26, 'ORISSA');
INSERT INTO `txt_states` VALUES(27, 'PUNJAB');
INSERT INTO `txt_states` VALUES(28, 'PONDICHERRY');
INSERT INTO `txt_states` VALUES(29, 'RAJASTHAN');
INSERT INTO `txt_states` VALUES(30, 'SIKKIM');
INSERT INTO `txt_states` VALUES(31, 'TAMIL NADU');
INSERT INTO `txt_states` VALUES(32, 'TRIPURA');
INSERT INTO `txt_states` VALUES(33, 'UTTARAKHAND');
INSERT INTO `txt_states` VALUES(34, 'UTTAR PRADESH');
INSERT INTO `txt_states` VALUES(35, 'WEST BENGAL');
INSERT INTO `txt_states` VALUES(36, 'TELANGANA');
