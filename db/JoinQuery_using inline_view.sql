-- select * from txt_bill_entry t1 where t1.buyer_account_code='52' and t1.supplier_account_code='8' and t1.delete_tag='FALSE'

-- SELECT * from txt_payment_bill_entry t2 where t2.delete_tag='FALSE' 

-- SELECT t1.bill_entry_id FROM txt_bill_entry AS t1
-- LEFT JOIN txt_payment_bill_entry AS t2 
-- ON t1.bill_entry_id=t2.bill_entry_id
-- WHERE  t1.buyer_account_code='52' AND t1.supplier_account_code='8' AND t1.delete_tag='FALSE' AND t2.delete_tag='FALSE' 


-- SELECT t1.bill_entry_id FROM  txt_payment_bill_entry AS t2 
-- LEFT JOIN txt_bill_entry AS t1
-- ON t1.bill_entry_id=t2.bill_entry_id
-- WHERE  t1.buyer_account_code='52' AND t1.supplier_account_code='8' AND t1.delete_tag='FALSE' AND t2.delete_tag='FALSE'



-- SELECT * FROM (SELECT * FROM txt_bill_entry WHERE delete_tag='FALSE' AND supplier_account_code='8' AND buyer_account_code='52' ) AS t1
-- LEFT JOIN (SELECT * FROM txt_payment_bill_entry WHERE delete_tag='FALSE' ) AS t2 
-- ON t1.bill_entry_id=t2.bill_entry_id


SELECT * FROM 
	(SELECT bill_entry_id,
		bill_number,
		bill_date,
		bill_amount 
	FROM txt_bill_entry 
	WHERE delete_tag='FALSE' 
	AND bill_entry_id NOT IN (SELECT bill_entry_id
				  FROM txt_payment_bill_entry 
				  WHERE delete_tag='FALSE' 
				  AND bill_payment_type='Full') 
	) AS t1
LEFT JOIN 
	(SELECT bill_entry_id AS t2_bill_entry_id ,
		payment_entry_id,
		payment_entry_vou_date,
		dis_amount,
		deduction_amount,
		bill_gr_amt,
		payment_received,
		balance_amount 
	FROM txt_payment_bill_entry 
	WHERE delete_tag='FALSE' ) AS t2 
ON t1.bill_entry_id=t2.t2_bill_entry_id



-- WHERE t1.delete_tag='FALSE' AND t2.delete_tag='FALSE' 
-- WHERE  t1.buyer_account_code='52' AND t1.supplier_account_code='8' AND t1.delete_tag='FALSE' AND t2.delete_tag='FALSE' 



