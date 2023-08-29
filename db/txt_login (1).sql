
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 50.63.237.34
-- Generation Time: May 17, 2020 at 08:20 AM
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
-- Table structure for table `txt_login`
--

CREATE TABLE `txt_login` (
  `login_id` int(11) NOT NULL auto_increment,
  `login_name` varchar(30) default NULL,
  `login_password` varchar(30) default NULL,
  `login_type` varchar(30) default NULL,
  `user_name` varchar(50) default NULL,
  `region` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `active` tinyint(4) default '0' COMMENT '0=active 1=non active',
  `show_hide` varchar(2000) default NULL,
  PRIMARY KEY  (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `txt_login`
--

INSERT INTO `txt_login` VALUES(1, 'admin', 'admin', 'admin', 'admin', NULL, NULL, 0, NULL);
INSERT INTO `txt_login` VALUES(2, 'test', 'test', 'admin', 'test', NULL, '1', 0, NULL);
INSERT INTO `txt_login` VALUES(3, 'ajay', 'jain', 'admin', 'ajay', NULL, NULL, 0, NULL);
