
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
-- Table structure for table `txt_bill_entry`
--

CREATE TABLE `txt_bill_entry` (
  `bill_entry_id` bigint(20) NOT NULL auto_increment,
  `voucher_number` varchar(20) NOT NULL,
  `voucher_date` date NOT NULL,
  `bill_number` varchar(20) NOT NULL,
  `bill_date` date NOT NULL,
  `lr_number` varchar(20) NOT NULL,
  `lr_date` date NOT NULL,
  `transport_name` varchar(20) NOT NULL,
  `supplier_account_code` varchar(20) NOT NULL,
  `buyer_account_code` varchar(20) NOT NULL,
  `agent` varchar(20) NOT NULL,
  `gross_amount` varchar(20) NOT NULL,
  `deduction_amount` varchar(20) NOT NULL,
  `additional_amount` varchar(20) NOT NULL,
  `net_amount` varchar(20) NOT NULL,
  `discount_percentage` varchar(20) NOT NULL,
  `discount_amount` varchar(20) NOT NULL,
  `bill_amount` varchar(20) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY  (`bill_entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `txt_bill_entry`
--

INSERT INTO `txt_bill_entry` VALUES(1, '123', '2019-08-01', '1232', '2019-08-02', '443', '2019-08-08', '4343', '443', '4343', 'dsf', '43', '43', '43', '43', '43', '43', '43', '432');
INSERT INTO `txt_bill_entry` VALUES(2, '125', '2020-02-01', '154', '2020-01-30', '585', '2020-01-30', 'Super', '25', '25', 'DT', '154200', '1100', '110', '154200', '5', '1540', '1154200', 'k');
