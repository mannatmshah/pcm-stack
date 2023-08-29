DELIMITER $$

DROP VIEW IF EXISTS `textile`.`view_active_company`$$

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_active_company` AS (SELECT `txt_company`.`company_id` AS `company_id`,`txt_company`.`firm_name` AS `firm_name`,`txt_company`.`address` AS `address`,`txt_company`.`city` AS `city`,`txt_company`.`state` AS `state`,`txt_company`.`pincode` AS `pincode`,`txt_company`.`gstin` AS `gstin`,`txt_company`.`contact_person` AS `contact_person`,`txt_company`.`contact_number` AS `contact_number`,`txt_company`.`sms_number` AS `sms_number`,`txt_company`.`whatsapp_number` AS `whatsapp_number`,`txt_company`.`email` AS `email`,`txt_company`.`website` AS `website`,`txt_company`.`group_id` AS `group_id`,`txt_company`.`group_name` AS `group_name`,`txt_company`.`commission_percentage` AS `commission_percentage`,`txt_company`.`firm_type` AS `firm_type`,`txt_company`.`agent_id` AS `agent_id`,`txt_company`.`reference` AS `reference`,`txt_company`.`remarks` AS `remarks`,`txt_company`.`pan_number` AS `pan_number`,`txt_company`.`visiting_card` AS `visiting_card`,`txt_company`.`photo_1` AS `photo_1`,`txt_company`.`photo_2` AS `photo_2`,`txt_company`.`create_user` AS `create_user`,`txt_company`.`create_date` AS `create_date`,`txt_company`.`last_update_user` AS `last_update_user`,`txt_company`.`last_update_date` AS `last_update_date`,`txt_company`.`delete_tag` AS `delete_tag`,`txt_company`.`delete_user` AS `delete_user`,`txt_company`.`delete_date` AS `delete_date`,`txt_company`.`products` AS `products`,`txt_company`.`brands` AS `brands` FROM `txt_company` WHERE (`txt_company`.`delete_tag` = _latin1'FALSE'))$$

DELIMITER ;

DELIMITER $$

DROP VIEW IF EXISTS `textile`.`bill_entry_id_full`$$

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bill_entry_id_full` AS (SELECT `txt_payment_bill_entry`.`bill_entry_id` AS `bill_entry_id` FROM `txt_payment_bill_entry` WHERE ((`txt_payment_bill_entry`.`delete_tag` = _latin1'FALSE') AND (`txt_payment_bill_entry`.`bill_payment_type` = _latin1'Full')))$$

DELIMITER ;

DELIMITER $$

DROP VIEW IF EXISTS `textile`.`view_buyer`$$

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_buyer` AS (SELECT `txt_company`.`company_id` AS `company_id`,`txt_company`.`firm_name` AS `firm_name`,`txt_company`.`address` AS `address`,`txt_company`.`city` AS `city`,`txt_company`.`state` AS `state`,`txt_company`.`pincode` AS `pincode`,`txt_company`.`gstin` AS `gstin`,`txt_company`.`contact_person` AS `contact_person`,`txt_company`.`contact_number` AS `contact_number`,`txt_company`.`sms_number` AS `sms_number`,`txt_company`.`whatsapp_number` AS `whatsapp_number`,`txt_company`.`email` AS `email`,`txt_company`.`website` AS `website`,`txt_company`.`group_id` AS `group_id`,`txt_company`.`group_name` AS `group_name`,`txt_company`.`commission_percentage` AS `commission_percentage`,`txt_company`.`firm_type` AS `firm_type`,`txt_company`.`agent_id` AS `agent_id`,`txt_company`.`reference` AS `reference`,`txt_company`.`remarks` AS `remarks`,`txt_company`.`pan_number` AS `pan_number`,`txt_company`.`visiting_card` AS `visiting_card`,`txt_company`.`photo_1` AS `photo_1`,`txt_company`.`photo_2` AS `photo_2`,`txt_company`.`create_user` AS `create_user`,`txt_company`.`create_date` AS `create_date`,`txt_company`.`last_update_user` AS `last_update_user`,`txt_company`.`last_update_date` AS `last_update_date`,`txt_company`.`delete_tag` AS `delete_tag`,`txt_company`.`delete_user` AS `delete_user`,`txt_company`.`delete_date` AS `delete_date`,`txt_company`.`products` AS `products`,`txt_company`.`brands` AS `brands` FROM `txt_company` WHERE ((`txt_company`.`delete_tag` = _latin1'FALSE') AND (`txt_company`.`firm_type` = _latin1'Buyer')))$$

DELIMITER ;

DELIMITER $$

DROP VIEW IF EXISTS `textile`.`view_supplier`$$

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_supplier` AS (SELECT `txt_company`.`company_id` AS `company_id`,`txt_company`.`firm_name` AS `firm_name`,`txt_company`.`address` AS `address`,`txt_company`.`city` AS `city`,`txt_company`.`state` AS `state`,`txt_company`.`pincode` AS `pincode`,`txt_company`.`gstin` AS `gstin`,`txt_company`.`contact_person` AS `contact_person`,`txt_company`.`contact_number` AS `contact_number`,`txt_company`.`sms_number` AS `sms_number`,`txt_company`.`whatsapp_number` AS `whatsapp_number`,`txt_company`.`email` AS `email`,`txt_company`.`website` AS `website`,`txt_company`.`group_id` AS `group_id`,`txt_company`.`group_name` AS `group_name`,`txt_company`.`commission_percentage` AS `commission_percentage`,`txt_company`.`firm_type` AS `firm_type`,`txt_company`.`agent_id` AS `agent_id`,`txt_company`.`reference` AS `reference`,`txt_company`.`remarks` AS `remarks`,`txt_company`.`pan_number` AS `pan_number`,`txt_company`.`visiting_card` AS `visiting_card`,`txt_company`.`photo_1` AS `photo_1`,`txt_company`.`photo_2` AS `photo_2`,`txt_company`.`create_user` AS `create_user`,`txt_company`.`create_date` AS `create_date`,`txt_company`.`last_update_user` AS `last_update_user`,`txt_company`.`last_update_date` AS `last_update_date`,`txt_company`.`delete_tag` AS `delete_tag`,`txt_company`.`delete_user` AS `delete_user`,`txt_company`.`delete_date` AS `delete_date`,`txt_company`.`products` AS `products`,`txt_company`.`brands` AS `brands` FROM `txt_company` WHERE ((`txt_company`.`delete_tag` = _latin1'FALSE') AND (`txt_company`.`firm_type` = _latin1'Supplier')))$$

DELIMITER ;

