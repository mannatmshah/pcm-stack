/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.0.45-community-nt : Database - textile
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

USE `textile`;

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL auto_increment,
  `menu_name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL default '0' COMMENT '0 if menu is root level or menuid if this is child on any menu',
  `link` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL default '1' COMMENT '0 for disabled menu or 1 for enabled menu',
  `user_role` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1702 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

LOCK TABLES `menu` WRITE;

insert  into `menu`(`menu_id`,`menu_name`,`parent_id`,`link`,`status`,`user_role`) values (1,'Home',0,'home/index.php','1','admin'),(2,'Master Data',0,'home/index.php','1','admin'),(3,'Transaction',0,'home/index.php','1','admin'),(4,'Reports',0,'home/index.php','1','admin'),(5,'Commission Reports',0,'home/underdevlopment.php','1','admin'),(6,'Search',0,'home/index.php','1','admin'),(7,'Utility',0,'home/underdevlopment.php','1','admin'),(201,'Group Master',2,'group_master/index.php','1','admin'),(202,'Company Master',2,'company/index.php','1','admin'),(203,'User Master',2,'admin/user/index.php','1','admin'),(301,'Bill Entry',3,'bill_entry/index.php','1','admin'),(302,'Payment Entry',3,'payment_entry/index.php','1','admin'),(401,'Buyers Outstanding',4,'home/underdevlopment.php','1','admin'),(402,'Supplier Outstanding',4,'home/underdevlopment.php','1','admin'),(403,'Date Wise Outstanding',4,'home/index.php','1','admin'),(404,'Advance Payment & GR',4,'advance_payment/advance_payment.php','1','admin'),(405,'Payment & GR Report',4,'payment_reports/payment_report.php','1','admin'),(406,'Ledger',4,'ledger/ledger_search.php','1','admin'),(408,'Bill Reports',4,'bill_reports/index.php','1','admin'),(411,'Buyer Outstanding By Firm',401,'outstanding_report/buyer_outstanding.php','1','admin'),(412,'Supplier Outstanding By Firm',402,'outstanding_report/supplier_outstanding.php','1','admin'),(413,'Selection by Firm',403,'outstanding_report_date/outstanding_date.php','1','admin'),(421,'Buyer Outstanding by Group',401,'outstanding_report_grp/buyer_outstanding_grp.php','1','admin'),(422,'Supplier Outstanding by Group',402,'outstanding_report_grp/supplier_outstanding_grp.php','1','admin'),(423,'Selection by Group',403,'outstanding_report_date/outstanding_grp_date.php','1','admin'),(501,'Commission Summary',5,'commission_report/commission_summary_search.php','1','admin'),(502,'Commission Detail Report',5,'commission_report/commission_detail_search.php','1','admin'),(601,'Company Search',6,'home/underdevlopment.php','1','admin_1'),(602,'Group Search',6,'home/underdevlopment.php','1','admin_1'),(603,'Bill Search',6,'bill_entry/bill_search.php','1','admin'),(604,'Payment Search',6,'payment_entry/payment_search.php','1','admin'),(707,'Backup',7,'utility/backup.php','1','admin'),(1100,'Home',0,'home/index.php','1','user'),(1200,'Master Data',0,'home/index.php','1','user'),(1201,'Group Master',1200,'group_master/index.php','1','user'),(1202,'Company Master',1200,'company/index.php','1','user'),(1300,'Transaction',0,'home/index.php','1','user'),(1301,'Bill Entry',1300,'bill_entry/index.php','1','user'),(1302,'Payment Entry',1300,'payment_entry/index.php','1','user'),(1400,'Reports',0,'home/index.php','1','user'),(1401,'Buyers Outstanding',1400,'home/underdevlopment.php','1','user'),(1402,'Supplier Outstanding',1400,'home/underdevlopment.php','1','user'),(1403,'Date Wise outstanding',1400,'home/index.php','1','user'),(1406,'Advance Payment & GR',1400,'advance_payment/advance_payment.php','1','user'),(1407,'Payment & GR Report',1400,'payment_reports/payment_report.php','1','user'),(1408,'Ledger',1400,'ledger/ledger_search.php','1','user'),(1411,'Buyer Outstanding By Firm',1401,'outstanding_report/buyer_outstanding.php','1','user'),(1412,'Supplier Outstanding By Firm',1402,'outstanding_report/supplier_outstanding.php','1','user'),(1413,'Selection by Firm',1403,'outstanding_report_date/outstanding_date.php','1','user'),(1421,'Buyer Outstanding By Group',1401,'outstanding_report_grp/buyer_outstanding_grp.php','1','user'),(1422,'Supplier Outstanding By Group',1402,'outstanding_report_grp/supplier_outstanding_grp.php','1','user'),(1423,'Selection by Group',1403,'outstanding_report_date/outstanding_grp_date.php','1','user'),(1600,'Search',0,'home/index.php','1','user'),(1601,'Company Search',1600,'home/underdevlopment.php','1','user_1'),(1602,'Group Search',1600,'home/underdevlopment.php','1','user_1'),(1603,'Bill Search',1600,'bill_entry/bill_search.php','1','user'),(1604,'Payment Search',1600,'payment_entry/payment_search.php','1','user'),(1700,'Utility',0,'home/underdevlopment.php','1','user'),(1701,'Backup',1700,'utility/backup.php','1','user');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
