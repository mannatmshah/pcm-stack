
 
SELECT voucher_date, 
			bill_entry_id, 
			bill_number, 
			bill_date, 
			supplier_account_code, 
			supp_firm_name, 
			buyer_account_code,
			buy_firm_name, 
			bill_amount , 
			DATEDIFF(CURDATE(),bill_date) AS days ,
			t2_bill_entry_id , 
			payment_entry_id, 
			payment_entry_vou_date, 
			dis_amount, 
			deduction_amount, 
			bill_gr_amt, 
			payment_received, 
			balance_amount 
FROM 
	(SELECT voucher_date, 
			bill_entry_id, 
			bill_number, 
			bill_date, 
			supplier_account_code, 
			Supplier.firm_name AS supp_firm_name, 
			buyer_account_code,
			Buyer.firm_name AS buy_firm_name, 
			bill_amount 
			
FROM txt_bill_entry ,view_supplier AS Supplier , 
					view_buyer AS Buyer 
WHERE txt_bill_entry.delete_tag='FALSE' 
AND supplier_account_code=supplier.company_id 
AND buyer_account_code=buyer.company_id 
AND bill_entry_id NOT IN (SELECT bill_entry_id 
							FROM txt_payment_bill_entry 
							WHERE delete_tag='FALSE' 
							AND bill_payment_type='Full') 
AND bill_date<='2020-07-09' 
ORDER BY buy_firm_name,supp_firm_name,bill_date ,bill_number) AS t1 

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
		WHERE delete_tag='FALSE' 
		ORDER BY payment_entry_vou_date ASC, payment_entry_id ASC ) AS t2 
ON t1.bill_entry_id=t2.t2_bill_entry_id