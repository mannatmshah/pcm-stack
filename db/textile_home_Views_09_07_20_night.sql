/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.0.45-community-nt : Database - textile
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`textile` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `textile`;

/*Table structure for table `bill_entry_id_full` */

DROP TABLE IF EXISTS `bill_entry_id_full`;

/*!50001 DROP VIEW IF EXISTS `bill_entry_id_full` */;
/*!50001 DROP TABLE IF EXISTS `bill_entry_id_full` */;

/*!50001 CREATE TABLE `bill_entry_id_full` (
  `bill_entry_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */;

/*Table structure for table `view_active_company` */

DROP TABLE IF EXISTS `view_active_company`;

/*!50001 DROP VIEW IF EXISTS `view_active_company` */;
/*!50001 DROP TABLE IF EXISTS `view_active_company` */;

/*!50001 CREATE TABLE `view_active_company` (
  `company_id` int(10) NOT NULL default '0',
  `firm_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL default '',
  `pincode` varchar(10) NOT NULL,
  `gstin` varchar(20) NOT NULL default '',
  `contact_person` varchar(20) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `sms_number` varchar(10) NOT NULL,
  `whatsapp_number` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `website` varchar(20) NOT NULL,
  `group_id` int(10) default NULL,
  `group_name` varchar(20) NOT NULL,
  `commission_percentage` decimal(5,2) NOT NULL default '0.00',
  `firm_type` varchar(20) NOT NULL,
  `agent_id` int(10) default NULL,
  `reference` varchar(20) NOT NULL,
  `remarks` varchar(20) NOT NULL,
  `pan_number` varchar(20) NOT NULL,
  `visiting_card` varchar(200) NOT NULL default '',
  `photo_1` varchar(200) default NULL,
  `photo_2` varchar(200) default NULL,
  `create_user` varchar(20) NOT NULL default '',
  `create_date` datetime NOT NULL,
  `last_update_user` varchar(20) NOT NULL default '',
  `last_update_date` datetime NOT NULL,
  `delete_tag` varchar(10) NOT NULL default '',
  `delete_user` varchar(20) default NULL,
  `delete_date` datetime NOT NULL,
  `products` varchar(100) NOT NULL default '',
  `brands` varchar(100) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */;

/*Table structure for table `view_buyer` */

DROP TABLE IF EXISTS `view_buyer`;

/*!50001 DROP VIEW IF EXISTS `view_buyer` */;
/*!50001 DROP TABLE IF EXISTS `view_buyer` */;

/*!50001 CREATE TABLE `view_buyer` (
  `company_id` int(10) NOT NULL default '0',
  `firm_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL default '',
  `pincode` varchar(10) NOT NULL,
  `gstin` varchar(20) NOT NULL default '',
  `contact_person` varchar(20) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `sms_number` varchar(10) NOT NULL,
  `whatsapp_number` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `website` varchar(20) NOT NULL,
  `group_id` int(10) default NULL,
  `group_name` varchar(20) NOT NULL,
  `commission_percentage` decimal(5,2) NOT NULL default '0.00',
  `firm_type` varchar(20) NOT NULL,
  `agent_id` int(10) default NULL,
  `reference` varchar(20) NOT NULL,
  `remarks` varchar(20) NOT NULL,
  `pan_number` varchar(20) NOT NULL,
  `visiting_card` varchar(200) NOT NULL default '',
  `photo_1` varchar(200) default NULL,
  `photo_2` varchar(200) default NULL,
  `create_user` varchar(20) NOT NULL default '',
  `create_date` datetime NOT NULL,
  `last_update_user` varchar(20) NOT NULL default '',
  `last_update_date` datetime NOT NULL,
  `delete_tag` varchar(10) NOT NULL default '',
  `delete_user` varchar(20) default NULL,
  `delete_date` datetime NOT NULL,
  `products` varchar(100) NOT NULL default '',
  `brands` varchar(100) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */;

/*Table structure for table `view_supplier` */

DROP TABLE IF EXISTS `view_supplier`;

/*!50001 DROP VIEW IF EXISTS `view_supplier` */;
/*!50001 DROP TABLE IF EXISTS `view_supplier` */;

/*!50001 CREATE TABLE `view_supplier` (
  `company_id` int(10) NOT NULL default '0',
  `firm_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL default '',
  `pincode` varchar(10) NOT NULL,
  `gstin` varchar(20) NOT NULL default '',
  `contact_person` varchar(20) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `sms_number` varchar(10) NOT NULL,
  `whatsapp_number` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `website` varchar(20) NOT NULL,
  `group_id` int(10) default NULL,
  `group_name` varchar(20) NOT NULL,
  `commission_percentage` decimal(5,2) NOT NULL default '0.00',
  `firm_type` varchar(20) NOT NULL,
  `agent_id` int(10) default NULL,
  `reference` varchar(20) NOT NULL,
  `remarks` varchar(20) NOT NULL,
  `pan_number` varchar(20) NOT NULL,
  `visiting_card` varchar(200) NOT NULL default '',
  `photo_1` varchar(200) default NULL,
  `photo_2` varchar(200) default NULL,
  `create_user` varchar(20) NOT NULL default '',
  `create_date` datetime NOT NULL,
  `last_update_user` varchar(20) NOT NULL default '',
  `last_update_date` datetime NOT NULL,
  `delete_tag` varchar(10) NOT NULL default '',
  `delete_user` varchar(20) default NULL,
  `delete_date` datetime NOT NULL,
  `products` varchar(100) NOT NULL default '',
  `brands` varchar(100) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 */;

/*View structure for view bill_entry_id_full */

/*!50001 DROP TABLE IF EXISTS `bill_entry_id_full` */;
/*!50001 DROP VIEW IF EXISTS `bill_entry_id_full` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bill_entry_id_full` AS (select `txt_payment_bill_entry`.`bill_entry_id` AS `bill_entry_id` from `txt_payment_bill_entry` where ((`txt_payment_bill_entry`.`delete_tag` = _latin1'FALSE') and (`txt_payment_bill_entry`.`bill_payment_type` = _latin1'Full'))) */;

/*View structure for view view_active_company */

/*!50001 DROP TABLE IF EXISTS `view_active_company` */;
/*!50001 DROP VIEW IF EXISTS `view_active_company` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_active_company` AS (select `txt_company`.`company_id` AS `company_id`,`txt_company`.`firm_name` AS `firm_name`,`txt_company`.`address` AS `address`,`txt_company`.`city` AS `city`,`txt_company`.`state` AS `state`,`txt_company`.`pincode` AS `pincode`,`txt_company`.`gstin` AS `gstin`,`txt_company`.`contact_person` AS `contact_person`,`txt_company`.`contact_number` AS `contact_number`,`txt_company`.`sms_number` AS `sms_number`,`txt_company`.`whatsapp_number` AS `whatsapp_number`,`txt_company`.`email` AS `email`,`txt_company`.`website` AS `website`,`txt_company`.`group_id` AS `group_id`,`txt_company`.`group_name` AS `group_name`,`txt_company`.`commission_percentage` AS `commission_percentage`,`txt_company`.`firm_type` AS `firm_type`,`txt_company`.`agent_id` AS `agent_id`,`txt_company`.`reference` AS `reference`,`txt_company`.`remarks` AS `remarks`,`txt_company`.`pan_number` AS `pan_number`,`txt_company`.`visiting_card` AS `visiting_card`,`txt_company`.`photo_1` AS `photo_1`,`txt_company`.`photo_2` AS `photo_2`,`txt_company`.`create_user` AS `create_user`,`txt_company`.`create_date` AS `create_date`,`txt_company`.`last_update_user` AS `last_update_user`,`txt_company`.`last_update_date` AS `last_update_date`,`txt_company`.`delete_tag` AS `delete_tag`,`txt_company`.`delete_user` AS `delete_user`,`txt_company`.`delete_date` AS `delete_date`,`txt_company`.`products` AS `products`,`txt_company`.`brands` AS `brands` from `txt_company` where (`txt_company`.`delete_tag` = _latin1'FALSE')) */;

/*View structure for view view_buyer */

/*!50001 DROP TABLE IF EXISTS `view_buyer` */;
/*!50001 DROP VIEW IF EXISTS `view_buyer` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_buyer` AS (select `txt_company`.`company_id` AS `company_id`,`txt_company`.`firm_name` AS `firm_name`,`txt_company`.`address` AS `address`,`txt_company`.`city` AS `city`,`txt_company`.`state` AS `state`,`txt_company`.`pincode` AS `pincode`,`txt_company`.`gstin` AS `gstin`,`txt_company`.`contact_person` AS `contact_person`,`txt_company`.`contact_number` AS `contact_number`,`txt_company`.`sms_number` AS `sms_number`,`txt_company`.`whatsapp_number` AS `whatsapp_number`,`txt_company`.`email` AS `email`,`txt_company`.`website` AS `website`,`txt_company`.`group_id` AS `group_id`,`txt_company`.`group_name` AS `group_name`,`txt_company`.`commission_percentage` AS `commission_percentage`,`txt_company`.`firm_type` AS `firm_type`,`txt_company`.`agent_id` AS `agent_id`,`txt_company`.`reference` AS `reference`,`txt_company`.`remarks` AS `remarks`,`txt_company`.`pan_number` AS `pan_number`,`txt_company`.`visiting_card` AS `visiting_card`,`txt_company`.`photo_1` AS `photo_1`,`txt_company`.`photo_2` AS `photo_2`,`txt_company`.`create_user` AS `create_user`,`txt_company`.`create_date` AS `create_date`,`txt_company`.`last_update_user` AS `last_update_user`,`txt_company`.`last_update_date` AS `last_update_date`,`txt_company`.`delete_tag` AS `delete_tag`,`txt_company`.`delete_user` AS `delete_user`,`txt_company`.`delete_date` AS `delete_date`,`txt_company`.`products` AS `products`,`txt_company`.`brands` AS `brands` from `txt_company` where ((`txt_company`.`delete_tag` = _latin1'FALSE') and (`txt_company`.`firm_type` = _latin1'Buyer'))) */;

/*View structure for view view_supplier */

/*!50001 DROP TABLE IF EXISTS `view_supplier` */;
/*!50001 DROP VIEW IF EXISTS `view_supplier` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_supplier` AS (select `txt_company`.`company_id` AS `company_id`,`txt_company`.`firm_name` AS `firm_name`,`txt_company`.`address` AS `address`,`txt_company`.`city` AS `city`,`txt_company`.`state` AS `state`,`txt_company`.`pincode` AS `pincode`,`txt_company`.`gstin` AS `gstin`,`txt_company`.`contact_person` AS `contact_person`,`txt_company`.`contact_number` AS `contact_number`,`txt_company`.`sms_number` AS `sms_number`,`txt_company`.`whatsapp_number` AS `whatsapp_number`,`txt_company`.`email` AS `email`,`txt_company`.`website` AS `website`,`txt_company`.`group_id` AS `group_id`,`txt_company`.`group_name` AS `group_name`,`txt_company`.`commission_percentage` AS `commission_percentage`,`txt_company`.`firm_type` AS `firm_type`,`txt_company`.`agent_id` AS `agent_id`,`txt_company`.`reference` AS `reference`,`txt_company`.`remarks` AS `remarks`,`txt_company`.`pan_number` AS `pan_number`,`txt_company`.`visiting_card` AS `visiting_card`,`txt_company`.`photo_1` AS `photo_1`,`txt_company`.`photo_2` AS `photo_2`,`txt_company`.`create_user` AS `create_user`,`txt_company`.`create_date` AS `create_date`,`txt_company`.`last_update_user` AS `last_update_user`,`txt_company`.`last_update_date` AS `last_update_date`,`txt_company`.`delete_tag` AS `delete_tag`,`txt_company`.`delete_user` AS `delete_user`,`txt_company`.`delete_date` AS `delete_date`,`txt_company`.`products` AS `products`,`txt_company`.`brands` AS `brands` from `txt_company` where ((`txt_company`.`delete_tag` = _latin1'FALSE') and (`txt_company`.`firm_type` = _latin1'Supplier'))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
