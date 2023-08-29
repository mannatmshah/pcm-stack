
-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: 50.63.237.34
-- Generation Time: May 17, 2020 at 08:21 AM
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
-- Table structure for table `txt_payment_entry`
--

CREATE TABLE `txt_payment_entry` (
  `payment_entry_id` bigint(20) NOT NULL auto_increment,
  `voucher_number` varchar(20) NOT NULL,
  `voucher_date` date NOT NULL,
  `buyer_account_number` varchar(20) NOT NULL,
  `supplier_account_number` varchar(20) NOT NULL,
  PRIMARY KEY  (`payment_entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `txt_payment_entry`
--

INSERT INTO `txt_payment_entry` VALUES(1, '123', '2019-08-01', '1232', '43434343');
