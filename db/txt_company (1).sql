
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
-- Table structure for table `txt_company`
--

CREATE TABLE `txt_company` (
  `company_id` bigint(20) NOT NULL auto_increment,
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
  `commission_percentage` float NOT NULL,
  `firm_type` varchar(20) NOT NULL,
  `reference` varchar(20) NOT NULL,
  `remarks` varchar(20) NOT NULL,
  `pan_number` varchar(20) NOT NULL,
  `visiting_card` varchar(200) NOT NULL default '',
  `photo_1` varchar(200) default NULL,
  `photo_2` varchar(200) default NULL,
  PRIMARY KEY  (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `txt_company`
--

INSERT INTO `txt_company` VALUES(7, 'Magraj kantilal fab pvt.ltd', '272,new cloth market,o/s.raipur gate', 'Ahmedabad', 'GUJARAT', '380002', '24AAFCM203', 'Manohar Bhai', '9977890552', '9977890552', '9977890552', 'example@mail.com', 'www.website.com', 'Emkay', 2, 'Supplier', 'NA', 'NA', 'NA', '1567688772_IMG_0073.JPG', '1567688772_IMG_0073.JPG', '1567688772_IMG_0073.JPG');
INSERT INTO `txt_company` VALUES(8, 'Aavali prints pvt.ltd', '107,new cloth market,o/s raipur gate', 'Ahmedabad', 'GUJARAT', '380002', '24AABCA119', 'dharmesh bhai', '8469251615', '8469251615', '8469251615', 'example@mail.com', 'www.website.com', 'Aavali', 2, 'Supplier', 'NA', 'NA', 'NA', '1567689231_IMG_0073.JPG', '1567689231_IMG_0073.JPG', '1567689231_IMG_0073.JPG');
INSERT INTO `txt_company` VALUES(9, 'Rishabh fab ', 'c-28 shree ghantakaran mahavir market near new cloth market sarangpur', 'Ahmedabad', 'GUJARAT', '380002', '24AAYFR694', 'dummy', '9099854456', '9099854456', '9099854456', 'rishabhfab99@gmail.c', 'www.website.com', 'Rishabh', 2, 'Supplier', 'NA', 'NA', 'NS', '1567689641_IMG_0073.JPG', '1567689641_IMG_0073.JPG', '1567689641_IMG_0073.JPG');
INSERT INTO `txt_company` VALUES(10, 'Bhavna impex', '236, new cloth market,o/s raipur gate ', 'Ahmedabad', 'GUJARAT', '380002', '24AADF3014', 'ANSHUL BHAI', '9879534436', '9879534436', '9879534436', 'bhavnafabrics@gmail.', 'www.website.com', 'Bhavna', 2, 'Supplier', 'NA', 'NA', 'NA', '1567690161_IMG_0073.JPG', '1567690161_IMG_0073.JPG', '1567690161_IMG_0073.JPG');
INSERT INTO `txt_company` VALUES(11, 'shree chamunda fabrics', 'block no.A, shop no.11/12,1st floor,sumel business park-1 near bew cloth market gate no 5,', 'AHNEDABAD', 'GUJARAT', '380002', '24AAJFS977', 'vikas shah', '9825048187', '9825048187', '9825048187', 'vikas@cftextiles.in', 'www.cftextiles.in', 'ShriChamundaSuiting', 2, 'Supplier', 'NA', 'NA', 'NA', '1567690696_IMG_0073.JPG', '1567690696_IMG_0073.JPG', '1567690696_IMG_0073.JPG');
INSERT INTO `txt_company` VALUES(12, 'Sekhani Fabrics Mills PVT.LTD', '62 New Cloth Market, ', 'Ahmedabad', 'GUJARAT', '380002', '24AACCS108', 'Rakesh Ji', '9879203909', '9879203909', '9879203909', 'example@mail.com', 'www.website.com', 'Sekhani', 2, 'Supplier', 'NA', 'NA', 'NA', '1567843079_IMG_0073_(2).JPG', '1567843079_IMG_0073_(2).JPG', '1567843079_IMG_0073_(2).JPG');
INSERT INTO `txt_company` VALUES(13, 'Suprimo Fabrics', '224Ground Floor, New Colth Market, Sarangpur', 'Ahmedabad', 'GUJARAT', '380002', '24AADHC040', 'Dinesh ji', '9979465204', '9979465204', '9979465204', 'aac.suprimo@gmail.co', 'www.website.com', 'Suprimo', 2, 'Supplier', 'NA', 'NA', 'NA', '1567844001_IMG_3993.JPG', '1567844001_IMG_3993.JPG', '1567844001_IMG_3993.JPG');
INSERT INTO `txt_company` VALUES(14, 'Preksha Textlies PVT LTD ', '135 Ground Floor, New Cloth Market', 'Ahmedabad', 'GUJARAT', '380002', '24AAACP676', 'Arpit Bhai ', '9409408919', '9409408919', '9409408919', 'example@mail.com', 'www.website.com', 'Prakash', 2, 'Supplier', 'NA', 'NA', 'NA', '1567844468_IMG_3993.JPG', '1567844468_IMG_0073_(2).JPG', '1567844468_IMG_0073_(2).JPG');
INSERT INTO `txt_company` VALUES(15, 'Sita Fabric Mills PVT LTD', '63, New Cloth Market ', 'Ahmedabad', 'GUJARAT', '380002', '24AADCS375', 'Dhiru Bhai', '9825008344', '9825008344', '9825008344', 'example@mail.com', 'www.website.com', 'Sita', 2, 'Supplier', 'NA', 'NA', 'NA', '1567844855_IMG_0075.JPG', '1567844855_IMG_0075.JPG', '1567844855_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(16, 'Berawala Textiles PVT LTD', '115 Mezanine Floor New Cloth Market O/S Raipur Gate ', 'Ahmedabad', 'GUJARAT', '380002', '24AAACB967', 'Niraksh ji', '9978896767', '9978896767', '9978896767', 'example@mail.com', 'www.website.com', 'Berawala', 2, 'Supplier', 'NA', 'NA', 'NA', '1567845288_IMG_0075.JPG', '1567845288_IMG_0075.JPG', '1567845288_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(17, 'Ishwardas Sagarmal', '469/23, Parsi Chavl, Opp.Rangwala Market, Maskati Market', 'Ahmedabad', 'GUJARAT', '380002', '24AABHP302', 'Gaurav Bhai ', '9327015889', '9327015889', '9327015889', 'example@mail.com', 'www.website.com', 'IS', 2, 'Supplier', 'NA', 'NA', 'NA', '1567845801_IMG_0075.JPG', '1567845801_IMG_0075.JPG', '1567845801_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(18, 'J.K Enterprise Cloth Merchant', 'E-401, Sumel Bussineshpak-6 , Dudheshwar ', 'Ahmedabad', 'GUJARAT', '380002', '24ATKPP273', 'Dharmendra ji', '9425172271', '9425172271', '9425172271', 'example@mail.com', 'www.website.com', 'PG-JituBhai', 2, 'Supplier', 'NA', 'NA', 'NA', '1567846360_IMG_0074.JPG', '1567846360_IMG_0074.JPG', '1567846360_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(19, 'Amardeep Texports ', '12/107, Kohinoor Mill Compound, Banglow Road ', 'Ichalkaranji', 'MAHARASHTRA', '452001', '27CRDPS839', 'Vikas ji', '8055433868', '8055433868', '8055433868', 'example@mail.com', 'www.website.com', 'Amardeep', 2, 'Supplier', 'NA', 'NA', 'NA', '1567847039_IMG_0075.JPG', '1567847039_IMG_0075.JPG', '1567847039_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(20, 'Shaswat Textiles PVT LTD', '181, New Cloth Market, O/S Raipur Gate ', 'Ahmedabad', 'GUJARAT', '380002', '24AAJCS357', 'Bunty Bhai ', '9879559356', '9879559356', '9879559356', 'example@mail.com', 'www.website.com', 'Shaswat', 2, 'Supplier', 'NA', 'NA', 'NA', '1567847927_IMG_0075.JPG', '1567847927_IMG_0075.JPG', '1567847927_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(21, 'Fashionista Inc', 'Unit No.20 Ground Floor Kewal Industrial Estate, Senapati Bapat Marg, Lower Parel ', 'Mumbai', 'MAHARASHTRA', '400013', '27AACFF197', 'Amit Bhai', '9594999461', '9594999461', '9594999461', 'example@mail.com', 'www.website.com', 'Fashionista', 2, 'Supplier', 'NA', 'NA', 'NA', '1567849987_IMG_0075.JPG', '1567849987_IMG_0075.JPG', '1567849987_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(22, 'Rishabh Fab ', 'C-28, Shree Ghantakarn Mahavir Market Sarangpur', 'Ahmedabad', 'GUJARAT', '380002', '24AAYFR699', 'Manish Bhai ', '9825077966', '9825077966', '9825077966', 'example@mail.com', 'www.website.com', 'Rishabh', 2, 'Supplier', 'NA', 'NA', 'NA', '1567850489_IMG_0075.JPG', '1567850489_IMG_0075.JPG', '1567850489_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(23, 'Reliable Roadways', 'Colth Market Ware House,Godown No.97 Panchkuiya Main Road ', 'Indore', 'MADHYA PRADESH', '452002', '23DVSPS023', 'Javed Bhai ', '9009243168', '9009243168', '9009243168', 'example@mail.com', 'www.website.com', 'TransportMumbai', 2, 'Transport', 'NA', 'NA', 'NA', '1567851090_IMG_0075.JPG', '1567851090_IMG_0075.JPG', '1567851090_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(24, 'United Road Carriers', '34/3,Ganesh Ganj ', 'Indore', 'MADHYA PRADESH', '452002', '23AAAFU298', 'United Office', '2411252', '1234567896', '1234567896', 'example@mail.com', 'www.website.com', 'TransportAhmedabad', 2, 'Transport', 'NA', 'NA', 'NA', '1567851908_IMG_0075.JPG', '1567851908_IMG_0075.JPG', '1567851908_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(25, 'Super Service Transport', '247, Labriya Bheru, Dhar Road, Gulab Bai ka Bagicha ', 'Indore', 'MADHYA PRADESH', '452002', '23BBRPJ266', 'Deven ji ', '8602509408', '8602509408', '8602509408', 'example@mail.com', 'www.website.com', 'TransportAhmedabad', 2, 'Transport', 'NA', 'NA', 'NA', '1567858208_IMG_0075.JPG', '1567858208_IMG_0075.JPG', '1567858208_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(26, 'Maa Realiable Transoprts Co.', 'Godown No.10 Ware House, Panchkulya ', 'Indore', 'MADHYA PRADESH', '452002', '23ACJPY460', 'Hiralal ', '9424890901', '9424890901', '9424890901', 'example@mail.com', 'www.website.com', 'TransportAhmedabad', 2, 'Transport', 'NA', 'NA', 'NA', '1567858677_IMG_0075.JPG', '1567858677_IMG_0075.JPG', '1567858677_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(27, 'Meena Dresses', '10-A, Shiv Vilas Palaces Opp Subhash Chowk Rajwada ', 'Indore', 'MADHYA PRADESH', '452007', '23ABVPJ201', 'Satish Uncle', '9826325552', '9826325552', '9826325552', 'meekshirts@hotmail.c', 'www.website.com', 'KS', 2, 'Buyer', 'NA', 'NA', 'NA', '1567859204_IMG_0075.JPG', '1567859204_IMG_0075.JPG', '1567859204_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(28, 'Shree Anand Textile', '20,Vithleswarai Market M.T Cloth Market ', 'Indore', 'MADHYA PRADESH', '452002', '23ACFPB453', 'Anand Bhaiya ', '7312459179', '7312459179', '7312459179', 'example@mail.com', 'www.website.com', 'ShriAnand', 2, 'Buyer', 'NA', 'NA', 'NA', '1567859549_IMG_0074.JPG', '1567859549_IMG_0075.JPG', '1567859549_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(29, 'B.G.D Garments Industries', '112, Readymade Complex Pardesipura', 'Indore', 'MADHYA PRADESH', '452002', '23ADUPD430', 'Mahesh Bhai', '9425058591', '9425058591', '9425058591', 'blackandwhite.bgd@ma', 'http://www.google.co', 'BGD', 2, 'Buyer', 'NA', 'NA', 'NA', '1567859955_IMG_0075.JPG', '1567859955_IMG_0075.JPG', '1567859955_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(30, 'Pakiza Fashion PVT LTD ', '40, Shiv Vilas Palaces Rajwada', 'Indore', 'MADHYA PRADESH', '452002', '23AAACP992', 'Suman Bhai ', '9425320815', '9425320815', '9425320815', 'pakizafashion1996@ma', 'www.website.com', 'Pakiza', 2, 'Buyer', 'NA', 'NA', 'NA', '1567860281_IMG_0075.JPG', '1567860281_IMG_0075.JPG', '1567860281_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(31, 'Chinar Shirt', '623, Sarswat Market, Khajuri Bazar M.G Road ', 'Indore', 'MADHYA PRADESH', '452001', '23AAIFC456', 'Anand Bhai ', '9425076585', '9425076585', '9425076585', 'example@mail.com', 'www.website.com', 'Chinar', 2, 'Buyer', 'NA', 'NA', 'NA', '1567860580_IMG_0075.JPG', '1567860580_IMG_0075.JPG', '1567860580_IMG_0075.JPG');
INSERT INTO `txt_company` VALUES(32, 'Aakash Ganga', 'MTCM', 'Indore', 'MAHARASHTRA', '452002', '23', '', '', '', '', '', '', 'Courier', 0, 'Transport', '', '', '', '', '', '');
INSERT INTO `txt_company` VALUES(33, 'Devendra Textiles', 'Shreenath Complex', 'Indore', 'MADHYA PRADESH', '452002', 'NA', 'Dhiraj Bhai Shah', '9302123090', '9302123090', '9302123090', 'devendratextiles@gma', '', 'DT', 2, 'Agent', '', '', 'AGTPS5793B', '', '', '');
INSERT INTO `txt_company` VALUES(34, 'Vagmi Marketing', 'Shreenath Complex', 'Indore', 'MADHYA PRADESH', '452002', 'NA', 'Rima Shah / Pritesh ', '9407215898', '9407215898', '9407215898', 'vagmimarketing@gmail', '', 'DT', 2, 'Agent', '', '', '', '', '', '');
INSERT INTO `txt_company` VALUES(35, 'Pritesh Shah', '128 - C Bakhtawar Ram Nagar', 'Indore', 'MADHYA PRADESH', '452018', 'NA', 'Pritesh Shah', '9977890552', '9977890552', '9977890552', 'priteshdshah@gmail.c', '', 'DT', 0, 'Agent', '', '', '', '', '', '');
