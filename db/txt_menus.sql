
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
-- Table structure for table `txt_menus`
--

CREATE TABLE `txt_menus` (
  `menu_id` int(11) NOT NULL auto_increment,
  `menutype` varchar(30) default NULL COMMENT 'topmenu,leftmenu',
  `name` varchar(30) default NULL,
  `link` varchar(100) default NULL,
  `menu_for` varchar(20) default NULL COMMENT 'login role',
  `menu_order` int(11) default NULL,
  PRIMARY KEY  (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `txt_menus`
--

INSERT INTO `txt_menus` VALUES(1, 'topmenu', 'User', 'admin/user/index.php', 'admin', 1);
INSERT INTO `txt_menus` VALUES(2, 'topmenu', 'Company', 'company/index.php', 'admin', 2);
INSERT INTO `txt_menus` VALUES(3, 'topmenu', 'Bill-Entry', 'bill_entry/index.php', 'admin', 3);
INSERT INTO `txt_menus` VALUES(4, 'topmenu', 'Payment Entry', 'payment_entry/index.php', 'admin', 4);
INSERT INTO `txt_menus` VALUES(5, 'topmenu', 'Group-Master', 'group_master/index.php', 'admin', 5);
