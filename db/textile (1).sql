-- phpMyAdmin SQL Dump
-- version 2.10.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 07, 2020 at 06:37 PM
-- Server version: 5.0.45
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `textile`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `txt_bill_entry`
-- 

DROP TABLE IF EXISTS `txt_bill_entry`;
CREATE TABLE IF NOT EXISTS `txt_bill_entry` (
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
  `gross_amount` decimal(15,2) NOT NULL default '0.00',
  `deduction_amount` decimal(15,2) NOT NULL default '0.00',
  `additional_amount` decimal(15,2) NOT NULL default '0.00',
  `net_amount` decimal(15,2) NOT NULL default '0.00',
  `discount_percentage` decimal(15,2) NOT NULL default '0.00',
  `discount_amount` decimal(15,2) NOT NULL default '0.00',
  `bill_amount` decimal(15,2) NOT NULL default '0.00',
  `remarks` varchar(100) NOT NULL default '0',
  `gst_percent` decimal(15,2) NOT NULL default '0.00',
  `gst_amount` decimal(15,2) NOT NULL default '0.00',
  `round_off` decimal(5,2) NOT NULL default '0.00',
  `last_update_user` varchar(20) NOT NULL default '',
  `last_update_date` datetime NOT NULL,
  `create_user` varchar(20) NOT NULL default '',
  `create_date` datetime NOT NULL,
  `delete_tag` varchar(10) NOT NULL default 'FALSE',
  `delete_user` varchar(20) NOT NULL default '',
  `delete_date` datetime NOT NULL,
  PRIMARY KEY  (`bill_entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- 
-- Dumping data for table `txt_bill_entry`
-- 

INSERT INTO `txt_bill_entry` (`bill_entry_id`, `voucher_number`, `voucher_date`, `bill_number`, `bill_date`, `lr_number`, `lr_date`, `transport_name`, `supplier_account_code`, `buyer_account_code`, `agent`, `gross_amount`, `deduction_amount`, `additional_amount`, `net_amount`, `discount_percentage`, `discount_amount`, `bill_amount`, `remarks`, `gst_percent`, `gst_amount`, `round_off`, `last_update_user`, `last_update_date`, `create_user`, `create_date`, `delete_tag`, `delete_user`, `delete_date`) VALUES 
(1, '123', '2019-08-01', '1232', '2019-08-02', '443', '2019-08-08', '4343', '443', '4343', 'dsf', '43.00', '43.00', '43.00', '43.00', '43.00', '43.00', '43.00', '432', '0.00', '0.00', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'TRUE', '6', '2020-05-26 15:29:57'),
(2, '125', '2020-02-01', '154', '2020-01-30', '585', '2020-01-30', '32', '16', '31', '33', '15420.00', '1100.00', '110.00', '13659.00', '5.00', '771.00', '14341.95', 'k', '5.00', '682.95', '0.00', '1', '2020-05-31 16:41:26', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(3, '12', '2020-05-19', '2121', '2020-05-18', '291283', '2020-02-18', '26', '16', '27', '33', '23400.00', '4.00', '2.00', '22462.00', '4.00', '936.00', '23585.10', 'sdfsdfh', '5.00', '1123.10', '0.00', '1', '2020-05-31 16:40:47', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(4, '43535', '0000-00-00', '113', '2020-05-17', '5421', '2020-05-17', 'gj;sdgj;sdgj;', 'sdjfs;ldgkj', 'sgssdkgjs;', 'x;kjsg', '121.00', '12.00', '12.00', '14.00', '11.00', '1214.00', '12141.00', 'Testing', '0.00', '0.00', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'TRUE', '1', '2020-05-25 19:40:38'),
(5, '999', '0000-00-00', '89', '2020-05-17', '24', '2020-05-17', 'fsd', 'wew', 'dgfdfg', 'sfsf', '8979.00', '908.00', '98.00', '98.00', '80.00', '98.00', '8.00', '0Testing Again', '0.00', '0.00', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'TRUE', '6', '2020-05-25 19:44:55'),
(6, '909090', '0000-00-00', '9090', '2020-05-17', '9090', '2020-05-17', 'Reliable', 'Supp', 'Buy', 'DT', '9000.00', '90.00', '90.00', '90.00', '9.00', '90.00', '909090.00', 'Testing Again', '0.00', '0.00', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'TRUE', '6', '2020-05-26 15:29:40'),
(7, '909090', '0000-00-00', '9090', '2020-05-17', '9090', '2020-05-17', 'Reliable', 'Supp', 'Buy', 'DT', '9000.00', '90.00', '90.00', '90.00', '9.00', '90.00', '909090.00', 'Testing Again', '0.00', '0.00', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'TRUE', '6', '2020-05-26 15:29:46'),
(8, '239479237429374', '2020-05-19', '97897', '2020-05-17', '98098', '2020-05-15', 'sdkfj', 'kgjs;g', 'dklfgj;dghj', 'dkfgjd;', '45.00', '45.00', '45.00', '545.00', '45.00', '545.00', '45.00', '45', '0.00', '0.00', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'TRUE', '6', '2020-05-26 15:30:13'),
(9, '29038239', '2020-05-19', '99999', '2020-05-15', '999999', '2020-05-15', 'hlkh', 'klk', 'klh', 'jhlkh', '45.00', '54.00', '45.00', '45.00', '45.00', '454.00', '45.00', '5hakhldfjhalsjdfhaljdhfalhdf', '0.00', '0.00', '0.00', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'TRUE', '6', '2020-05-26 15:30:09'),
(10, '8888', '2020-05-19', '888', '2020-05-09', '888', '2020-05-15', '32', '8', '27', '35', '45454.00', '0.00', '0.00', '43181.30', '5.00', '2272.70', '45341.00', 'Testing Drop', '5.00', '2159.07', '0.63', '1', '2020-05-25 16:33:30', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(11, '', '2020-05-20', '1', '2020-05-18', '1', '2020-05-18', '32', '8', '28', '33', '45000.00', '0.00', '0.00', '43650.00', '3.00', '1350.00', '45832.50', '', '5.00', '2182.50', '0.00', '1', '2020-05-31 16:38:57', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(12, '', '2020-05-20', '2', '2020-05-18', '2', '2020-05-18', '26', '19', '30', '35', '50000.00', '0.00', '0.00', '48500.00', '3.00', '1500.00', '50925.00', '5', '5.00', '2425.00', '0.00', '1', '2020-05-31 16:39:34', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(13, '', '2020-05-20', '59', '2020-05-18', '458', '2020-05-18', '23', '19', '30', '35', '78900.00', '454.00', '545.00', '75046.00', '5.00', '3945.00', '78798.30', '4', '5.00', '3752.30', '0.00', '1', '2020-05-31 16:37:35', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(14, '78', '2020-05-22', '8989', '2020-05-20', '45', '2020-05-20', '32', '8', '29', '33', '78900.00', '0.00', '0.00', '74955.00', '5.00', '3945.00', '78702.75', 'Hello', '5.00', '3747.75', '0.00', '1', '2020-05-31 16:40:30', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(15, '99', '2020-05-22', '9997', '2020-05-20', '485', '2020-05-20', '26', '20', '31', '35', '65000.00', '562.00', '325.00', '63463.00', '2.00', '1300.00', '66636.15', 'Test Again', '5.00', '3173.15', '0.00', '1', '2020-05-31 16:40:10', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(16, '98', '2020-05-22', '5555', '2020-05-02', '548', '2020-05-20', '26', '14', '31', '35', '98700.00', '50.00', '200.00', '93915.00', '5.00', '4935.00', '98611.00', 'Testing again again', '5.00', '4695.75', '0.00', '1', '2020-05-31 16:37:03', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(17, '878', '2020-05-22', '989', '2020-05-20', '456546', '2020-05-20', '26', '17', '31', '35', '78000.00', '0.00', '0.00', '74100.00', '5.00', '3900.00', '77805.00', 'Again and Again', '5.00', '3705.00', '0.00', '1', '2020-05-31 16:39:54', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(18, '98', '2020-05-22', '5555', '2020-05-02', '548', '2020-05-20', '26', '21', '31', '35', '98700.00', '50.00', '200.00', '93915.00', '5.00', '4935.00', '98611.00', 'Testing again again', '5.00', '4695.75', '0.00', '1', '2020-05-31 16:36:43', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(19, '98098012', '2020-05-22', '9897', '2020-05-20', '198301', '0000-00-00', '26', '10', '31', '35', '98700.00', '0.00', '0.00', '93765.00', '5.00', '4935.00', '98453.75', 'New ', '5.00', '4688.25', '0.50', '1', '2020-05-31 16:41:15', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(20, '78787878', '2020-05-22', '09', '2020-05-02', 'NA', '0000-00-00', '32', '8', '29', '33', '89000.00', '0.00', '0.00', '84550.00', '5.00', '4450.00', '88777.50', 'ip', '5.00', '4227.50', '0.00', '1', '2020-05-22 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(21, '98989', '2020-05-22', '65656', '2020-05-20', '988', '0000-00-00', '32', '8', '29', '33', '78000.00', '65.00', '89.00', '74124.00', '5.00', '3900.00', '77831.00', 'Full Data - Edited Gross ', '5.00', '4656.20', '0.80', '1', '2020-05-22 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(22, '79000', '2020-05-22', '9000', '2020-05-02', '88', '0000-00-00', '26', '19', '31', '35', '58950.00', '0.00', '0.00', '56002.50', '5.00', '2947.50', '58950.00', 'No Dis No Ded No Add', '5.00', '2947.50', '0.50', '1', '2020-05-22 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(23, '4582', '2020-05-22', '256', '2020-05-20', '78', '0000-00-00', '32', '8', '29', '33', '70950.00', '0.00', '0.00', '69191.00', '2.00', '1759.00', '73501.00', 'Ok 1 Edited by Prit', '5.00', '4309.55', '0.45', '6', '2020-05-22 19:57:59', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00'),
(24, '98', '2020-05-25', '897', '2020-05-20', '789', '0000-00-00', '26', '19', '29', '35', '78900.00', '1.00', '0.00', '75743.00', '4.00', '3156.00', '79530.00', 'Textile Entry', '5.00', '3787.15', '-0.15', '1', '2020-05-25 15:25:58', '1', '2020-05-25 15:21:05', 'FALSE', '', '0000-00-00 00:00:00'),
(25, '893045', '2020-05-25', '90', '2020-05-20', '989', '0000-00-00', '32', '19', '29', '33', '89500.00', '0.00', '0.00', '86815.00', '3.00', '2685.00', '91156.00', '', '5.00', '4340.75', '0.25', '1', '2020-05-25 15:33:22', '1', '2020-05-25 15:33:22', 'FALSE', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `txt_company`
-- 

DROP TABLE IF EXISTS `txt_company`;
CREATE TABLE IF NOT EXISTS `txt_company` (
  `company_id` int(10) NOT NULL auto_increment,
  `firm_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `gstin` varchar(10) NOT NULL,
  `contact_person` varchar(20) NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `sms_number` varchar(10) NOT NULL,
  `whatsapp_number` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `website` varchar(20) NOT NULL,
  `group_name` varchar(20) NOT NULL,
  `commission_percentage` decimal(5,2) NOT NULL default '0.00',
  `firm_type` varchar(20) NOT NULL,
  `reference` varchar(20) NOT NULL,
  `remarks` varchar(20) NOT NULL,
  `pan_number` varchar(20) NOT NULL,
  `visiting_card` varchar(200) NOT NULL default '',
  `photo_1` varchar(200) default NULL,
  `photo_2` varchar(200) default NULL,
  `last_update_user` varchar(20) NOT NULL default '',
  `last_update_date` datetime NOT NULL,
  `create_user` varchar(20) NOT NULL default '',
  `create_date` datetime NOT NULL,
  `delete_tag` varchar(10) NOT NULL default 'FALSE',
  `delete_user` varchar(20) default '',
  `delete_date` datetime NOT NULL,
  `group_id` int(10) default NULL,
  `agent_id` int(10) default NULL,
  PRIMARY KEY  (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

-- 
-- Dumping data for table `txt_company`
-- 

INSERT INTO `txt_company` (`company_id`, `firm_name`, `address`, `city`, `state`, `pincode`, `gstin`, `contact_person`, `contact_number`, `sms_number`, `whatsapp_number`, `email`, `website`, `group_name`, `commission_percentage`, `firm_type`, `reference`, `remarks`, `pan_number`, `visiting_card`, `photo_1`, `photo_2`, `last_update_user`, `last_update_date`, `create_user`, `create_date`, `delete_tag`, `delete_user`, `delete_date`, `group_id`, `agent_id`) VALUES 
(7, 'Magraj kantilal fab pvt.ltd', '272,new cloth market,o/s.raipur gate', 'Ahmedabad', 'GUJARAT', '380002', '24AAFCM203', 'Manohar Bhai', '9977890552', '9977890552', '9977890552', 'example@mail.com', 'www.website.com', 'Emkay', '2.00', 'Supplier', 'NA', 'NA', 'NA', '', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 18, NULL),
(8, 'Aavali prints pvt.ltd', '107,new cloth market,o/s raipur gate', 'Ahmedabad', 'GUJARAT', '380002', '24AABCA119', 'dharmesh bhai', '8469251615', '8469251615', '8469251615', 'example@mail.com', 'www.website.com', 'Aavali', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567689231_IMG_0073.JPG', '1567689231_IMG_0073.JPG', '1567689231_IMG_0073.JPG', '1', '2020-05-28 11:48:48', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 1, 34),
(9, 'Rishabh fab ', 'c-28 shree ghantakaran mahavir market near new cloth market sarangpur', 'Ahmedabad', 'GUJARAT', '380002', '24AAYFR694', 'dummy', '9099854456', '9099854456', '9099854456', 'rishabhfab99@gmail.c', 'www.website.com', 'Rishabh', '2.00', 'Supplier', 'NA', 'NA', 'NS', '1567689641_IMG_0073.JPG', '1567689641_IMG_0073.JPG', '1567689641_IMG_0073.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '1', '2020-05-25 18:34:17', 23, NULL),
(10, 'Bhavna impex', '236, new cloth market,o/s raipur gate ', 'Ahmedabad', 'GUJARAT', '380002', '24AADF3014', 'ANSHUL BHAI', '9879534436', '9879534436', '9879534436', 'bhavnafabrics@gmail.', 'www.website.com', 'Bhavna', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567690161_IMG_0073.JPG', '1567690161_IMG_0073.JPG', '1567690161_IMG_0073.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 10, NULL),
(11, 'shree chamunda fabrics', 'block no.A, shop no.11/12,1st floor,sumel business park-1 near bew cloth market gate no 5,', 'AHNEDABAD', 'GUJARAT', '380002', '24AAJFS977', 'vikas shah', '9825048187', '9825048187', '9825048187', 'vikas@cftextiles.in', 'www.cftextiles.in', 'ShriChamundaSuiting', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567690696_IMG_0073.JPG', '1567690696_IMG_0073.JPG', '1567690696_IMG_0073.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '6', '2020-05-25 20:30:39', 3, NULL),
(12, 'Sekhani Fabrics Mills PVT.LTD', '62 New Cloth Market, ', 'Ahmedabad', 'GUJARAT', '380002', '24AACCS108', 'Rakesh Ji', '9879203909', '9879203909', '9879203909', 'example@mail.com', 'www.website.com', 'Sekhani', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567843079_IMG_0073_(2).JPG', '1567843079_IMG_0073_(2).JPG', '1567843079_IMG_0073_(2).JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 8, NULL),
(13, 'Suprimo Fabrics', '224Ground Floor, New Colth Market, Sarangpur', 'Ahmedabad', 'GUJARAT', '380002', '24AADHC040', 'Dinesh ji', '9979465204', '9979465204', '9979465204', 'aac.suprimo@gmail.co', 'www.website.com', 'Suprimo', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567844001_IMG_3993.JPG', '1567844001_IMG_3993.JPG', '1567844001_IMG_3993.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 25, NULL),
(14, 'Preksha Textlies PVT LTD ', '135 Ground Floor, New Cloth Market', 'Ahmedabad', 'GUJARAT', '380002', '24AAACP676', 'Arpit Bhai ', '9409408919', '9409408919', '9409408919', 'example@mail.com', 'www.website.com', 'Prakash', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567844468_IMG_3993.JPG', '1567844468_IMG_0073_(2).JPG', '1567844468_IMG_0073_(2).JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 24, NULL),
(15, 'Sita Fabric Mills PVT LTD', '63, New Cloth Market ', 'Ahmedabad', 'GUJARAT', '380002', '24AADCS375', 'Dhiru Bhai', '9825008344', '9825008344', '9825008344', 'example@mail.com', 'www.website.com', 'Sita', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567844855_IMG_0075.JPG', '1567844855_IMG_0075.JPG', '1567844855_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 7, NULL),
(16, 'Berawala Textiles PVT LTD', '115 Mezanine Floor New Cloth Market O/S Raipur Gate ', 'Ahmedabad', 'GUJARAT', '380002', '24AAACB967', 'Niraksh ji', '9978896767', '9978896767', '9978896767', 'example@mail.com', 'www.website.com', 'Berawala', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567845288_IMG_0075.JPG', '1567845288_IMG_0075.JPG', '1567845288_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 49, NULL),
(17, 'Ishwardas Sagarmal', '469/23, Parsi Chavl, Opp.Rangwala Market, Maskati Market', 'Ahmedabad', 'GUJARAT', '380002', '24AABHP302', 'Gaurav Bhai ', '9327015889', '9327015889', '9327015889', 'example@mail.com', 'www.website.com', 'IS', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567845801_IMG_0075.JPG', '1567845801_IMG_0075.JPG', '1567845801_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 21, NULL),
(18, 'J.K Enterprise Cloth Merchant', 'E-401, Sumel Bussineshpak-6 , Dudheshwar ', 'Ahmedabad', 'GUJARAT', '380002', '24ATKPP273', 'Dharmendra ji', '9425172271', '9425172271', '9425172271', 'example@mail.com', 'www.website.com', 'PG-JituBhai', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567846360_IMG_0074.JPG', '1567846360_IMG_0074.JPG', '1567846360_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 22, NULL),
(19, 'Amardeep Texports ', '12/107, Kohinoor Mill Compound, Banglow Road ', 'Ichalkaranji', 'MAHARASHTRA', '452001', '27CRDPS839', 'Vikas ji', '8055433868', '8055433868', '8055433868', 'example@mail.com', 'www.website.com', 'Amardeep', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567847039_IMG_0075.JPG', '1567847039_IMG_0075.JPG', '1567847039_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 48, NULL),
(20, 'Shaswat Textiles PVT LTD', '181, New Cloth Market, O/S Raipur Gate ', 'Ahmedabad', 'GUJARAT', '380002', '24AAJCS357', 'Bunty Bhai ', '9879559356', '9879559356', '9879559356', 'example@mail.com', 'www.website.com', 'Shaswat', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567847927_IMG_0075.JPG', '1567847927_IMG_0075.JPG', '1567847927_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 6, NULL),
(21, 'Fashionista Inc', 'Unit No.20 Ground Floor Kewal Industrial Estate, Senapati Bapat Marg, Lower Parel ', 'Mumbai', 'MAHARASHTRA', '400013', '27AACFF197', 'Amit Bhai', '9594999461', '9594999461', '9594999461', 'example@mail.com', 'www.website.com', 'Fashionista', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567849987_IMG_0075.JPG', '1567849987_IMG_0075.JPG', '1567849987_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 15, NULL),
(22, 'Rishabh Fab ', 'C-28, Shree Ghantakarn Mahavir Market Sarangpur', 'Ahmedabad', 'GUJARAT', '380002', '24AAYFR699', 'Manish Bhai ', '9825077966', '9825077966', '9825077966', 'example@mail.com', 'www.website.com', 'Rishabh', '2.00', 'Supplier', 'NA', 'NA', 'NA', '1567850489_IMG_0075.JPG', '1567850489_IMG_0075.JPG', '1567850489_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '6', '2020-05-25 20:31:23', 23, NULL),
(23, 'Reliable Roadways', 'Colth Market Ware House,Godown No.97 Panchkuiya Main Road ', 'Indore', 'MADHYA PRADESH', '452002', '23DVSPS023', 'Javed Bhai ', '9009243168', '9009243168', '9009243168', 'example@mail.com', 'www.website.com', 'TransportMumbai', '2.00', 'Transport', 'NA', 'NA', 'NA', '1567851090_IMG_0075.JPG', '1567851090_IMG_0075.JPG', '1567851090_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 55, NULL),
(24, 'United Road Carriers', '34/3,Ganesh Ganj ', 'Indore', 'MADHYA PRADESH', '452002', '23AAAFU298', 'United Office', '2411252', '1234567896', '1234567896', 'example@mail.com', 'www.website.com', 'TransportAhmedabad', '0.00', 'Transport', 'NA', 'NA', 'NA', '1567851908_IMG_0075.JPG', '1567851908_IMG_0075.JPG', '1567851908_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 54, NULL),
(25, 'Super Service Transport', '247, Labriya Bheru, Dhar Road, Gulab Bai ka Bagicha ', 'Indore', 'MADHYA PRADESH', '452002', '23BBRPJ266', 'Deven ji ', '8602509408', '8602509408', '8602509408', 'example@mail.com', 'www.website.com', 'TransportAhmedabad', '2.00', 'Transport', 'NA', 'NA', 'NA', '1567858208_IMG_0075.JPG', '1567858208_IMG_0075.JPG', '1567858208_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 54, NULL),
(26, 'Maa Realiable Transoprts Co.', 'Godown No.10 Ware House, Panchkulya ', 'Indore', 'MADHYA PRADESH', '452002', '23ACJPY460', 'Hiralal ', '9424890901', '9424890901', '9424890901', 'example@mail.com', 'www.website.com', 'TransportAhmedabad', '2.00', 'Transport', 'NA', 'NA', 'NA', '1567858677_IMG_0075.JPG', '1567858677_IMG_0075.JPG', '1567858677_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 54, NULL),
(27, 'Meena Dresses', '10-A, Shiv Vilas Palaces Opp Subhash Chowk Rajwada ', 'Indore', 'MADHYA PRADESH', '452007', '23ABVPJ201', 'Satish Uncle', '9826325552', '9826325552', '9826325552', 'meekshirts@hotmail.c', 'www.website.com', 'KS', '2.00', 'Buyer', 'NA', 'NA', 'NA', '1567859204_IMG_0075.JPG', '1567859204_IMG_0075.JPG', '1567859204_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 34, NULL),
(28, 'Shree Anand Textile', '20,Vithleswarai Market M.T Cloth Market ', 'Indore', 'MADHYA PRADESH', '452002', '23ACFPB453', 'Anand Bhaiya ', '7312459179', '7312459179', '7312459179', 'example@mail.com', 'www.website.com', 'ShriAnand', '2.00', 'Buyer', 'DT', 'NA', 'NA', '1567859549_IMG_0074.JPG', '1567859549_IMG_0075.JPG', '1567859549_IMG_0075.JPG', '6', '2020-05-30 15:24:27', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 50, 0),
(29, 'B.G.D Garments Industries', '112, Readymade Complex Pardesipura', 'Indore', 'MADHYA PRADESH', '452002', '23ADUPD430', 'Mahesh Bhai', '9425058591', '9425058591', '9425058591', 'blackandwhite.bgd@ma', 'http://www.google.co', 'BGD', '2.00', 'Buyer', 'NA', 'NA', 'NA', '1567859955_IMG_0075.JPG', '1567859955_IMG_0075.JPG', '1567859955_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 30, NULL),
(30, 'Pakiza Fashion PVT LTD ', '40, Shiv Vilas Palaces Rajwada', 'Indore', 'MADHYA PRADESH', '452002', '23AAACP992', 'Suman Bhai ', '9425320815', '9425320815', '9425320815', 'pakizafashion1996@ma', 'www.website.com', 'Pakiza', '2.00', 'Buyer', 'NA', 'NA', 'NA', '1567860281_IMG_0075.JPG', '1567860281_IMG_0075.JPG', '1567860281_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 51, NULL),
(31, 'Chinar Shirt', '623, Sarswat Market, Khajuri Bazar M.G Road ', 'Indore', 'MADHYA PRADESH', '452001', '23AAIFC456', 'Anand Bhai ', '9425076585', '9425076585', '9425076585', 'example@mail.com', 'www.website.com', 'Chinar', '2.00', 'Buyer', 'NA', 'NA', 'NA', '1567860580_IMG_0075.JPG', '1567860580_IMG_0075.JPG', '1567860580_IMG_0075.JPG', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 58, NULL),
(32, 'Aakash Ganga', 'MTCM', 'Indore', 'MAHARASHTRA', '452002', '23', '', '', '', '', '', '', 'Courier', '0.00', 'Transport', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 59, NULL),
(33, 'Devendra Textiles', 'Shreenath Complex', 'Indore', 'MADHYA PRADESH', '452002', 'NA', 'Dhiraj Bhai Shah', '9302123090', '9302123090', '9302123090', 'devendratextiles@gma', '', 'DT', '2.00', 'Agent', '', '', 'AGTPS5793B', '', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 60, NULL),
(34, 'Vagmi Marketing', 'Shreenath Complex', 'Indore', 'MADHYA PRADESH', '452002', 'NA', 'Rima Shah / Pritesh ', '9407215898', '9407215898', '9407215898', 'vagmimarketing@gmail', '', 'DT', '2.00', 'Agent', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '6', '2020-05-25 20:43:05', 60, NULL),
(35, 'Pritesh Shah', '128 - C Bakhtawar Ram Nagar', 'Indore', 'MADHYA PRADESH', '452018', 'NA', 'Pritesh Shah', '9977890552', '9977890552', '9977890552', 'priteshdshah@gmail.c', '', 'DT', '0.00', 'Agent', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 60, NULL),
(36, 'Snehal Textiles', '117 Murli Manohar Market', 'Ahmedabad', 'GUJARAT', '382001', 'NA', 'Rajni Bhai', '9327049996', '9327049996', '9327049996', 'rajni@gmail.com', '', 'DT', '0.00', 'Agent', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '', '0000-00-00 00:00:00', 60, NULL),
(37, 'Disha Clothing Pvt Ltd', 'Mumbai', 'Mumbai', 'MAHARASHTRA', '452001', 'NA', 'Pramod Gupta', '940', '940', '940', 'disha@disha.com', 'disha.com', 'Disha', '2.00', 'Supplier', 'Disha', 'Hello', 'NA', '', '', '', '1', '2020-05-23 14:56:59', '1', '2020-05-23 14:52:54', 'FALSE', '', '0000-00-00 00:00:00', 44, NULL),
(38, 'Other', 'Other', 'Indore', 'MADHYA PRADESH', '452001', 'NA', '', '', '', '', '', '', 'NoGroup', '999.99', 'Other', 'Non', '', '', '', '', '', '1', '2020-05-23 15:29:26', '1', '2020-05-23 15:29:26', 'FALSE', '', '0000-00-00 00:00:00', 5, NULL),
(39, 'Aashi Industries', 'Rajwada', 'Indore', 'MADHYA PRADESH', '452002', 'NA', 'Alok Jain, Shailesh ', '997890552', '', '', '', '', 'Mikado', '0.00', 'Buyer', 'Arihant', '', '', '1590486558_Arihant.pdf', '', '', '1', '2020-05-30 15:23:51', '6', '2020-05-24 18:34:55', 'FALSE', '', '0000-00-00 00:00:00', 33, 0),
(40, 'Arihant Syntex', 'Sumel 2', 'Ahmedabad', 'GUJARAT', '382002', 'NA', '', '', '', '', '', '', 'Arihant', '2.00', 'Supplier', '', '', '', '', '', '', '6', '2020-05-24 18:39:32', '6', '2020-05-24 18:39:32', 'FALSE', '', '0000-00-00 00:00:00', 2, NULL),
(41, 'Disha Enterprises', 'Pardesipura', 'Indore', 'MADHYA PRADESH', '452002', 'NA', 'Raju Bhai', '', '', '', '', '', 'Butterfly', '0.00', 'Buyer', '', '', '', '', '', '', '6', '2020-05-25 20:06:46', '6', '2020-05-25 20:06:46', 'TRUE', '6', '2020-05-25 20:44:41', 4, NULL),
(42, 'Disha Enterprises', 'Pardesipura', 'Indore', 'MADHYA PRADESH', '452002', 'NA', '', '', '', '', '', '', 'Butterfly', '0.00', 'Buyer', '', '', '', '', '', '', '6', '2020-05-25 20:11:54', '6', '2020-05-25 20:11:54', 'TRUE', '6', '2020-05-25 20:44:50', 4, NULL),
(43, 'Disha Enterprises', 'Pardesipura', 'Indore', 'MADHYA PRADESH', '452002', 'NA', '', '', '', '', '', '', 'Butterfly', '0.00', 'Buyer', '', '', '', '', '', '', '6', '2020-05-25 20:13:43', '6', '2020-05-25 20:13:43', 'TRUE', '6', '2020-05-25 20:44:54', 4, NULL),
(44, 'Sample Company', 'Indore', 'Indore', 'MADHYA PRADESH', '452001', 'NA', '', '', '', '', '', '', 'NoGroup', '0.00', 'Other', '', '', '', '', '', '', '6', '2020-05-25 20:15:57', '6', '2020-05-25 20:15:57', 'FALSE', '6', '2020-05-25 20:22:06', 5, NULL),
(45, 'Sample Company Two', 'Indore', 'Indore', 'MADHYA PRADESH', '452001', 'NA', '', '', '', '', '', '', 'NoGroup', '0.00', 'Other', '', '', '', '', '', '', '6', '2020-05-25 20:18:50', '6', '2020-05-25 20:18:50', 'FALSE', '6', '2020-05-25 20:21:43', 5, NULL),
(46, 'Navdeep Garments', 'Rajwada', 'indore', 'MADHYA PRADESH', '452002', 'NA', '', '', '', '', '', '', '61', '0.00', 'Buyer', '', '', '', '', '', '', '6', '2020-05-26 14:46:11', '6', '2020-05-26 14:46:11', 'TRUE', '6', '2020-05-26 14:51:39', NULL, NULL),
(47, 'Navdeep Garments ', 'Rajwada', 'Indore', 'MADHYA PRADESH', '452002', 'NA', '', '', '', '', '', '', '', '0.00', 'Buyer', '', '', '', '', '', '', '6', '2020-05-26 14:52:20', '6', '2020-05-26 14:52:20', 'FALSE', '', '0000-00-00 00:00:00', 61, NULL),
(48, 'Bharat Mirchandani', 'FreeGanj', 'Indore', 'MADHYA PRADESH', '452002', 'NA', 'Mahesh Mirchandani', '', '', '', '', '', '', '0.00', 'Agent', '', '', '', '', '', '', '1', '2020-05-28 11:45:43', '1', '2020-05-28 11:45:43', 'FALSE', '', '0000-00-00 00:00:00', 63, 0),
(49, 'Baradia and Co', 'Sumel 2', 'Ahmedabad', 'GUJARAT', '382002', 'NA', '', '', '', '', '', '', '', '1.00', 'Supplier', '', '', '', '', '', '', '1', '2020-05-28 11:50:25', '1', '2020-05-28 11:50:25', 'FALSE', '', '0000-00-00 00:00:00', 12, 36);

-- --------------------------------------------------------

-- 
-- Table structure for table `txt_group_master`
-- 

DROP TABLE IF EXISTS `txt_group_master`;
CREATE TABLE IF NOT EXISTS `txt_group_master` (
  `group_id` int(10) unsigned NOT NULL auto_increment,
  `group_name` varchar(100) default NULL,
  `group_desc` varchar(200) default NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

-- 
-- Dumping data for table `txt_group_master`
-- 

INSERT INTO `txt_group_master` (`group_id`, `group_name`, `group_desc`) VALUES 
(1, 'Aavali', 'Aavali Prints Pvt Ltd'),
(2, 'Arihant', 'Arihant Syntex Ahmedabad'),
(3, 'ShriChamundaSuiting', 'Shri Chamunda Suiting Ahmedabad'),
(4, 'Butterfly', 'Disha Enterprises Indore'),
(5, 'NoGroup', 'General'),
(6, 'Shaswat', 'Shaswat Textiles Ahmedabad'),
(7, 'Sita', 'Sita Fabrics Ahmedabad'),
(8, 'Sekhani', 'Sekhani Fabrics Ahmedabad'),
(9, 'Prabhat', 'Laxmi Silk Mills'),
(10, 'Bhavna', 'Bhavna Impex Ahmedabad'),
(11, 'Amruta', 'Amruta Ahmedabad'),
(12, 'Baradia', 'Baradia Ahmedabad'),
(13, 'Montex', 'Montex Mumbai'),
(14, 'Y2K', 'Y2K Fashion Mumbai'),
(15, 'Fashionista', 'Fashionista Mumbai'),
(16, 'Klassic', 'Klassic Mumbai'),
(17, 'SeshmalDipchand', 'Seshmal Dipchand Mumbai'),
(18, 'Emkay', 'Emkay Suiting and Shirting Ahmedabad'),
(20, 'LR', 'L R Fabrics Ahmedabad'),
(21, 'IS', 'Ishwardas Sagarmal'),
(22, 'PG-JituBhai', 'Jitu Bhai'),
(23, 'Rishabh', 'Rishabh Fab Ahmedabad'),
(24, 'Prakash', 'Prakash Ahmedabad'),
(25, 'Suprimo', 'Suprimo Ahmedabad'),
(26, 'MGEE', 'MGEE Ahmedabad'),
(27, 'Nakoda', 'Nakoda Fashion Ahmedabad'),
(28, 'Navkar-DixitBhai', 'Navkar Ahmedabad'),
(29, 'Charchit', 'Charchit Indore'),
(30, 'BGD', 'BGD Indore'),
(31, 'Chandan', 'Chandan Indore'),
(32, 'KNitin', 'K Nitin Indore'),
(33, 'Mikado', 'Fashion Clothing Indore'),
(34, 'KS', 'K S Garments Indore'),
(35, 'MiniKids', 'Mini Kids Indore'),
(36, 'Manan', 'Manan Indore'),
(37, 'MJ', 'Manan Junior Indore'),
(38, 'ManishDresses', 'Manish Dresses Indore'),
(39, 'SKVK', 'Sachinkumar Vipinkumar Indore'),
(40, 'VasuClothing', 'Vasu Clothing Indore'),
(41, 'VasuLifestyle', 'Vasu Lifestyle Indore'),
(42, 'Vazir', 'Vazir Dresses Indore'),
(43, 'Mehta', 'Mehta Creation'),
(44, 'Disha', 'Disha Clothing Mumbai'),
(45, 'Century', 'Century Mumbai'),
(46, 'Hyper', 'Hyper Mumbai'),
(47, 'Sankeshwar', 'Sankeshwar Mumbai'),
(48, 'Amardeep', 'Amardeep Ichalkaranji'),
(49, 'Berawala', 'Berawala Ahmedabad'),
(50, 'ShriAnand', 'Shri Anand Textiles Indore'),
(51, 'Pakiza', 'Pakiza Fashion Indore'),
(52, 'Mewa', 'Mewa Ahmedabad'),
(53, 'Manita', 'Manita Ahmedabad'),
(54, 'TransportAhmedabad', 'Ahmedabad  Transport'),
(55, 'TransportMumbai', 'Transport Mumbai'),
(56, 'TransportIchalkaranji', 'Transport Ichalkaranji'),
(57, 'Transport', 'Transport General'),
(58, 'Chinar', 'Chinar Shirts'),
(59, 'Courier', 'Courier'),
(60, 'DT', 'Devendra Textiles'),
(61, 'Navdeep', 'Navdeep Garments, Indore'),
(62, 'GSachanand', 'Ratan Textile Free Ganj Indore'),
(63, 'Mirchandani', 'G Sachanand Group');

-- --------------------------------------------------------

-- 
-- Table structure for table `txt_login`
-- 

DROP TABLE IF EXISTS `txt_login`;
CREATE TABLE IF NOT EXISTS `txt_login` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `txt_login`
-- 

INSERT INTO `txt_login` (`login_id`, `login_name`, `login_password`, `login_type`, `user_name`, `region`, `email`, `active`, `show_hide`) VALUES 
(1, 'admin', 'admin', 'admin', 'admin', NULL, NULL, 0, NULL),
(2, 'test', 'test', 'admin', 'test', NULL, '1', 0, NULL),
(3, 'ajay', 'jain', 'admin', 'ajay', NULL, NULL, 0, NULL),
(4, 'pritesh', 'pritesh', 'user', 'Pritesh', NULL, 'pritsneh1@gmail.com', 0, NULL),
(6, 'prit', 'prit', 'admin', 'Pritesh', NULL, 'priteshdshah@gmail.com', 0, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `txt_menus`
-- 

DROP TABLE IF EXISTS `txt_menus`;
CREATE TABLE IF NOT EXISTS `txt_menus` (
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

INSERT INTO `txt_menus` (`menu_id`, `menutype`, `name`, `link`, `menu_for`, `menu_order`) VALUES 
(1, 'topmenu', 'User', 'admin/user/index.php', 'admin', 1),
(2, 'topmenu', 'Company', 'company/index.php', 'admin', 2),
(3, 'topmenu', 'Bill-Entry', 'bill_entry/index.php', 'admin', 3),
(4, 'topmenu', 'Payment Entry', 'payment_entry/index.php', 'admin', 4),
(5, 'topmenu', 'Group-Master', 'group_master/index.php', 'admin', 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `txt_payment_bill_entry`
-- 

DROP TABLE IF EXISTS `txt_payment_bill_entry`;
CREATE TABLE IF NOT EXISTS `txt_payment_bill_entry` (
  `payment_bill_entry_id` bigint(20) NOT NULL auto_increment,
  `payment_entry_id` bigint(20) NOT NULL default '0',
  `payment_entry_vou_date` date NOT NULL,
  `bill_entry_id` bigint(20) NOT NULL,
  `bill_number` varchar(20) NOT NULL default '''',
  `bill_date` date NOT NULL,
  `bill_amount` decimal(15,2) NOT NULL default '0.00',
  `amount_adjusted` decimal(15,2) NOT NULL default '0.00',
  `gr_adjusted` decimal(15,2) NOT NULL default '0.00',
  `discount_adjusted` decimal(15,2) NOT NULL default '0.00',
  `bill_payment_type` varchar(20) NOT NULL default '',
  `payment_received` decimal(15,2) NOT NULL default '0.00',
  `dis_percent` decimal(15,2) NOT NULL default '0.00',
  `dis_amount` decimal(15,2) NOT NULL default '0.00',
  `deduction_amount` decimal(15,2) NOT NULL default '0.00',
  `balance_amount` decimal(15,2) NOT NULL,
  `remark` varchar(50) NOT NULL default '',
  `create_user` varchar(20) NOT NULL default '',
  `create_date` datetime NOT NULL,
  `last_update_user` varchar(20) NOT NULL default '',
  `last_update_date` datetime NOT NULL,
  `delete_user` varchar(20) NOT NULL default '',
  `delete_date` datetime NOT NULL,
  `delete_tag` varchar(10) NOT NULL default 'FALSE',
  `bill_gr_amt` decimal(15,2) NOT NULL default '0.00',
  PRIMARY KEY  (`payment_bill_entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `txt_payment_bill_entry`
-- 

INSERT INTO `txt_payment_bill_entry` (`payment_bill_entry_id`, `payment_entry_id`, `payment_entry_vou_date`, `bill_entry_id`, `bill_number`, `bill_date`, `bill_amount`, `amount_adjusted`, `gr_adjusted`, `discount_adjusted`, `bill_payment_type`, `payment_received`, `dis_percent`, `dis_amount`, `deduction_amount`, `balance_amount`, `remark`, `create_user`, `create_date`, `last_update_user`, `last_update_date`, `delete_user`, `delete_date`, `delete_tag`, `bill_gr_amt`) VALUES 
(1, 1, '2020-06-02', 25, '90', '2020-05-20', '91156.00', '0.00', '0.00', '0.00', 'Select', '15000.00', '0.00', '0.00', '0.00', '0.00', '', '1', '2020-06-07 12:55:30', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00'),
(2, 1, '2020-06-02', 24, '897', '2020-05-20', '79530.00', '0.00', '0.00', '0.00', 'Select', '0.00', '0.00', '0.00', '0.00', '0.00', '', '1', '2020-06-07 12:55:30', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00'),
(3, 3, '2020-06-02', 23, '256', '2020-05-20', '73501.00', '0.00', '0.00', '0.00', 'Select', '0.00', '0.00', '0.00', '0.00', '0.00', '', '1', '2020-06-07 14:19:59', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00'),
(4, 3, '2020-06-02', 21, '65656', '2020-05-20', '77831.00', '0.00', '0.00', '0.00', 'Select', '0.00', '0.00', '0.00', '0.00', '0.00', '', '1', '2020-06-07 14:19:59', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00'),
(5, 3, '2020-06-02', 20, '09', '2020-05-02', '88777.50', '0.00', '0.00', '0.00', 'Select', '0.00', '0.00', '0.00', '0.00', '0.00', '', '1', '2020-06-07 14:19:59', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00'),
(6, 3, '2020-06-02', 14, '8989', '2020-05-20', '78702.75', '0.00', '0.00', '0.00', 'Select', '0.00', '0.00', '0.00', '0.00', '0.00', '', '1', '2020-06-07 14:19:59', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00'),
(7, 5, '2020-06-02', 25, '90', '2020-05-20', '91156.00', '0.00', '0.00', '0.00', 'Select', '50000.00', '3.00', '2734.68', '5000.00', '33421.32', '', '1', '2020-06-07 18:45:38', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00'),
(8, 5, '2020-06-02', 24, '897', '2020-05-20', '79530.00', '0.00', '0.00', '0.00', 'Select', '0.00', '0.00', '0.00', '0.00', '79530.00', '', '1', '2020-06-07 18:45:38', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00'),
(9, 6, '2020-06-02', 25, '90', '2020-05-20', '91156.00', '0.00', '0.00', '0.00', 'Select', '0.00', '0.00', '0.00', '0.00', '0.00', '', '1', '2020-06-07 22:31:39', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00'),
(10, 6, '2020-06-02', 24, '897', '2020-05-20', '79530.00', '0.00', '0.00', '0.00', 'Select', '0.00', '0.00', '0.00', '0.00', '0.00', '', '1', '2020-06-07 22:31:39', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE', '0.00');

-- --------------------------------------------------------

-- 
-- Table structure for table `txt_payment_cheque_entry`
-- 

DROP TABLE IF EXISTS `txt_payment_cheque_entry`;
CREATE TABLE IF NOT EXISTS `txt_payment_cheque_entry` (
  `payment_chq_entry_id` bigint(20) NOT NULL auto_increment,
  `payment_entry_id` bigint(20) NOT NULL,
  `chq_number` varchar(20) NOT NULL default '''''',
  `chq_date` date NOT NULL,
  `bank` varchar(20) NOT NULL default '''''',
  `chq_amt` decimal(15,2) NOT NULL default '0.00',
  `dis_amt` decimal(15,2) NOT NULL default '0.00',
  `remark` varchar(50) NOT NULL default '''''',
  `create_user` varchar(20) NOT NULL default '''''',
  `create_date` datetime NOT NULL,
  `last_update_user` varchar(20) NOT NULL default '''''',
  `last_update_date` datetime NOT NULL,
  `delete_user` varchar(20) NOT NULL default '''''',
  `delete_date` datetime NOT NULL,
  `delete_tag` varchar(10) NOT NULL default 'FALSE',
  PRIMARY KEY  (`payment_chq_entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

-- 
-- Dumping data for table `txt_payment_cheque_entry`
-- 

INSERT INTO `txt_payment_cheque_entry` (`payment_chq_entry_id`, `payment_entry_id`, `chq_number`, `chq_date`, `bank`, `chq_amt`, `dis_amt`, `remark`, `create_user`, `create_date`, `last_update_user`, `last_update_date`, `delete_user`, `delete_date`, `delete_tag`) VALUES 
(1, 1, '101', '0000-00-00', '', '15000.00', '0.00', '', '1', '2020-06-07 12:55:30', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(2, 1, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 12:55:30', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(3, 1, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 12:55:30', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(4, 1, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 12:55:30', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(5, 1, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 12:55:30', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(6, 2, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:20', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(7, 2, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:21', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(8, 2, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:21', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(9, 2, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:21', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(10, 2, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:21', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(11, 3, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:59', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(12, 3, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:59', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(13, 3, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:59', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(14, 3, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:59', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(15, 3, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:19:59', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(16, 4, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:29:57', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(17, 4, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:29:57', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(18, 4, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:29:58', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(19, 4, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:29:58', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(20, 4, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 14:29:58', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(21, 5, '', '0000-00-00', '', '50000.00', '0.00', '', '1', '2020-06-07 18:45:37', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(22, 5, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 18:45:37', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(23, 5, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 18:45:37', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(24, 5, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 18:45:37', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(25, 5, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 18:45:38', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(26, 6, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 22:31:39', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(27, 6, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 22:31:39', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(28, 6, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 22:31:39', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(29, 6, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 22:31:39', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE'),
(30, 6, '', '0000-00-00', '', '0.00', '0.00', '', '1', '2020-06-07 22:31:39', '''''', '0000-00-00 00:00:00', '''''', '0000-00-00 00:00:00', 'FALSE');

-- --------------------------------------------------------

-- 
-- Table structure for table `txt_payment_entry_main`
-- 

DROP TABLE IF EXISTS `txt_payment_entry_main`;
CREATE TABLE IF NOT EXISTS `txt_payment_entry_main` (
  `payment_entry_id` bigint(20) NOT NULL auto_increment,
  `manual_vou_number` varchar(20) NOT NULL default '',
  `old_system_vou_number` varchar(20) NOT NULL default '',
  `voucher_date` date NOT NULL,
  `buyer_account_code` varchar(20) NOT NULL default '',
  `supplier_account_code` varchar(20) NOT NULL default '',
  `payment_amount` decimal(15,2) NOT NULL default '0.00',
  `discount_amount` decimal(15,2) NOT NULL default '0.00',
  `gr_amount` decimal(15,2) NOT NULL default '0.00',
  `vou_type` varchar(10) NOT NULL default '',
  `narration` varchar(100) NOT NULL default '',
  `create_user` varchar(20) NOT NULL default '',
  `create_date` datetime NOT NULL,
  `last_update_user` varchar(20) NOT NULL default '',
  `last_update_date` datetime NOT NULL,
  `delete_user` varchar(20) NOT NULL default '',
  `delete_date` datetime NOT NULL,
  `delete_tag` varchar(10) NOT NULL default 'FALSE',
  PRIMARY KEY  (`payment_entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `txt_payment_entry_main`
-- 

INSERT INTO `txt_payment_entry_main` (`payment_entry_id`, `manual_vou_number`, `old_system_vou_number`, `voucher_date`, `buyer_account_code`, `supplier_account_code`, `payment_amount`, `discount_amount`, `gr_amount`, `vou_type`, `narration`, `create_user`, `create_date`, `last_update_user`, `last_update_date`, `delete_user`, `delete_date`, `delete_tag`) VALUES 
(1, '4505', '', '2020-06-02', '29', '19', '0.00', '0.00', '0.00', 'Payment', 'Pay', '1', '2020-06-07 12:55:30', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE'),
(2, '4849', '', '2020-06-02', '39', '8', '0.00', '0.00', '0.00', 'Advance Pa', '', '1', '2020-06-07 14:19:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE'),
(3, '4580', '', '2020-06-02', '29', '8', '0.00', '0.00', '0.00', 'Payment', '', '1', '2020-06-07 14:19:59', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE'),
(4, '8909', '', '2020-06-02', '39', '8', '0.00', '0.00', '0.00', 'Discount', '', '1', '2020-06-07 14:29:57', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE'),
(5, '4809', '', '2020-06-02', '29', '19', '50000.00', '0.00', '0.00', 'Payment', '', '1', '2020-06-07 18:45:37', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE'),
(6, '5858', '', '2020-06-02', '29', '19', '0.00', '0.00', '0.00', 'Payment', '', '1', '2020-06-07 22:31:39', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', 'FALSE');

-- --------------------------------------------------------

-- 
-- Table structure for table `txt_payment_gr_entry`
-- 

DROP TABLE IF EXISTS `txt_payment_gr_entry`;
CREATE TABLE IF NOT EXISTS `txt_payment_gr_entry` (
  `payment_gr_entry_id` bigint(20) NOT NULL auto_increment,
  `payment_entry_id` bigint(20) NOT NULL default '0',
  `lr_number` varchar(20) NOT NULL default '',
  `lr_date` date NOT NULL,
  `transport` varchar(20) NOT NULL default '',
  `booked_to` varchar(20) NOT NULL default '',
  `number_of_bales` varchar(20) NOT NULL default '',
  `total_weight` varchar(20) NOT NULL default '',
  `gr_amount` decimal(15,2) NOT NULL default '0.00',
  `remark` varchar(50) NOT NULL default '',
  `create_user` varchar(20) NOT NULL default '',
  `create_date` datetime NOT NULL,
  `last_update_user` varchar(20) NOT NULL default '',
  `last_update_date` datetime NOT NULL,
  `delete_user` varchar(20) NOT NULL default '',
  `delete_date` datetime NOT NULL,
  `delete_tag` varchar(10) NOT NULL default 'FALSE',
  PRIMARY KEY  (`payment_gr_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `txt_payment_gr_entry`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `txt_states`
-- 

DROP TABLE IF EXISTS `txt_states`;
CREATE TABLE IF NOT EXISTS `txt_states` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `state` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- 
-- Dumping data for table `txt_states`
-- 

INSERT INTO `txt_states` (`id`, `state`) VALUES 
(1, 'ANDAMAN AND NICOBAR ISLANDS'),
(2, 'ANDHRA PRADESH'),
(3, 'ARUNACHAL PRADESH'),
(4, 'ASSAM'),
(5, 'BIHAR'),
(6, 'CHATTISGARH'),
(7, 'CHANDIGARH'),
(8, 'DAMAN AND DIU'),
(9, 'DELHI'),
(10, 'DADRA AND NAGAR HAVELI'),
(11, 'GOA'),
(12, 'GUJARAT'),
(13, 'HIMACHAL PRADESH'),
(14, 'HARYANA'),
(15, 'JAMMU AND KASHMIR'),
(16, 'JHARKHAND'),
(17, 'KERALA'),
(18, 'KARNATAKA'),
(19, 'LAKSHADWEEP'),
(20, 'MEGHALAYA'),
(21, 'MAHARASHTRA'),
(22, 'MANIPUR'),
(23, 'MADHYA PRADESH'),
(24, 'MIZORAM'),
(25, 'NAGALAND'),
(26, 'ORISSA'),
(27, 'PUNJAB'),
(28, 'PONDICHERRY'),
(29, 'RAJASTHAN'),
(30, 'SIKKIM'),
(31, 'TAMIL NADU'),
(32, 'TRIPURA'),
(33, 'UTTARAKHAND'),
(34, 'UTTAR PRADESH'),
(35, 'WEST BENGAL'),
(36, 'TELANGANA');

-- --------------------------------------------------------

-- 
-- Table structure for table `unused_txt_payment_entry`
-- 

DROP TABLE IF EXISTS `unused_txt_payment_entry`;
CREATE TABLE IF NOT EXISTS `unused_txt_payment_entry` (
  `payment_entry_id` bigint(20) NOT NULL auto_increment,
  `voucher_number` varchar(20) NOT NULL,
  `voucher_date` date NOT NULL,
  `buyer_account_number` varchar(20) NOT NULL,
  `supplier_account_number` varchar(20) NOT NULL,
  PRIMARY KEY  (`payment_entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `unused_txt_payment_entry`
-- 

INSERT INTO `unused_txt_payment_entry` (`payment_entry_id`, `voucher_number`, `voucher_date`, `buyer_account_number`, `supplier_account_number`) VALUES 
(1, '123', '2019-08-01', '1232', '43434343');

-- --------------------------------------------------------

-- 
-- Table structure for table `unused_txt_payment_entry_detail`
-- 

DROP TABLE IF EXISTS `unused_txt_payment_entry_detail`;
CREATE TABLE IF NOT EXISTS `unused_txt_payment_entry_detail` (
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
-- Dumping data for table `unused_txt_payment_entry_detail`
-- 


-- 
-- Procedures
-- 
DELIMITER $$
-- 
CREATE DEFINER=`root`@`localhost` PROCEDURE `createcompanyList`(
	INOUT companyList VARCHAR(4000)
)
BEGIN
	DECLARE finished INTEGER DEFAULT 0;
	DECLARE companyName VARCHAR(100) DEFAULT "";
	-- declare cursor for Company Name
	DECLARE curCom 
		CURSOR FOR 
			SELECT firm_name FROM txt_company ORDER BY firm_name;
	-- declare NOT FOUND handler
	DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
	OPEN curCom;
	getCompany: LOOP
		FETCH curCom INTO companyName;
		IF finished = 1 THEN 
			LEAVE getCompany;
		END IF;
		-- build Company list
		SET companyList = CONCAT(companyName,";",companyList);
	END LOOP getCompany;
	CLOSE curCom;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `updateGroupId`(INOUT debugMessage VARCHAR(5000))
BEGIN
	DECLARE finished INTEGER DEFAULT 0;
	DECLARE subQryFinished INTEGER DEFAULT 0;
	
	DECLARE l_grpName VARCHAR(100) DEFAULT "";
	DECLARE l_comId INT(10);
	DECLARE l_grpId INT(10) ;
	
	-- declare cursor for Group Name
	DECLARE curGrp 
		CURSOR FOR 
			SELECT company_id,group_name FROM txt_company ORDER BY group_name;
	-- declare NOT FOUND handler
	DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET finished = 1;
	OPEN curGrp;
	getGrpName: LOOP
		FETCH curGrp INTO l_comId,l_grpName;
		IF finished = 1 THEN 
			LEAVE getGrpName;
		END IF;
				SET debugMessage = CONCAT("Loop 1",";",l_comId,";",l_grpName,";",debugMessage);
			
				BLOCK2: BEGIN
					
					DECLARE subQryFinished INTEGER DEFAULT 0;
					-- declare Cursor for Group Id
					DECLARE curGrpId 
						CURSOR FOR 
							SELECT group_id FROM txt_group_master WHERE txt_group_master.group_name=l_grpName;
					-- declare NOT FOUND handler
					DECLARE CONTINUE HANDLER 
						FOR NOT FOUND SET subQryFinished = 1;	
					
					SET debugMessage = CONCAT("Block 2 Before Loop2 ",";",l_comId,";",l_grpName,";",debugMessage);					
					
					OPEN curGrpId;
					getGrpId: LOOP
						FETCH curGrpId INTO l_grpId;
						IF subQryFinished = 1 THEN 
							LEAVE getGrpId;
						END IF;
						
						SET debugMessage = CONCAT("Inside Loop 2",";",l_comId,";",l_grpId,";",debugMessage);
						
						UPDATE txt_company SET group_id=l_grpId WHERE txt_company.company_id=l_comId;
						COMMIT;
						
					END LOOP getGrpId;
					
					SET debugMessage = CONCAT("Block 2 After Loop2 ",";",l_comId,";",l_grpName,";",debugMessage);					
					CLOSE curGrpId;
					
					
				END BLOCK2;
 		
	END LOOP getGrpName;
	CLOSE curGrp;
END$$

-- 
DELIMITER ;
-- 
