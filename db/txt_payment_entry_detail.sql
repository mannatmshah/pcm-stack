
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
-- Table structure for table `txt_payment_entry_detail`
--

CREATE TABLE `txt_payment_entry_detail` (
  `payment_entry_detail_id` bigint(20) NOT NULL auto_increment,
  `payment_entry_id` bigint(20) NOT NULL,
  `check_number` varchar(20) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `check_date` date NOT NULL,
  `remarks` varchar(50) NOT NULL,
  PRIMARY KEY  (`payment_entry_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `txt_payment_entry_detail`
--

