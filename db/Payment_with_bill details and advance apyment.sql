SELECT voucher_date, 
		bill_entry_id, 
		bill_number, 
		bill_date, 
		supplier_account_code, 
		supp_firm_name,
		buyer_account_code, 
		buy_firm_name,
		bill_amount ,
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
		supp_firm_name,
		buyer_account_code, 
		buy_firm_name,
		bill_amount 
		FROM txt_bill_entry ,( SELECT supp.company_id AS supp_company_id,
						supp.firm_name AS supp_firm_name 
					FROM txt_company AS supp 
					WHERE supp.delete_tag='FALSE' 
					AND firm_type='Supplier' 
					ORDER BY firm_name) AS Supplier ,
					
					( SELECT buy.company_id AS buy_company_id,
						buy.firm_name AS buy_firm_name 
					FROM txt_company AS buy 
					WHERE buy.delete_tag='FALSE' 
					AND firm_type='Buyer' 
					ORDER BY firm_name) AS Buyer					
		WHERE delete_tag='FALSE' 
		AND supplier_account_code=supp_company_id
		AND buyer_account_code=buy_company_id
		ORDER BY  supp_firm_name,buy_firm_name,bill_date ) AS t1 
JOIN (SELECT bill_entry_id AS t2_bill_entry_id , 
		payment_entry_id, 
		payment_entry_vou_date, 
		dis_amount, 
		deduction_amount, 
		bill_gr_amt, 
		payment_received, 
		balance_amount 
		FROM txt_payment_bill_entry 
		WHERE delete_tag='FALSE' AND bill_gr_amt =0  ) AS t2 ON t1.bill_entry_id=t2.t2_bill_entry_id
		
UNION

select voucher_date,
		'' AS bill_entry_id, 
		'' AS bill_number,
		'' AS bill_number,
		supplier_account_code,
		supp_firm_name,
		buyer_account_code,
		buy_firm_name,
		'' AS bill_amount,
		'' AS t2_bill_entry_id,
		payment_entry_id,
		voucher_date AS payment_entry_vou_date,
		discount_amount AS dis_amount,
		'' AS deduction_amount,
		gr_amount AS bill_gr_amt,
		payment_amount AS payment_received,
		'' AS balance_amount
	
		from (
select payment_entry_id,
		manual_vou_number,
		voucher_date,
		buyer_account_code,
		supplier_account_code,
		vou_type,
		payment_amount,
		discount_amount,
		gr_amount,
		supp_firm_name,
		buy_firm_name
 from txt_payment_entry_main ,( SELECT supp.company_id AS supp_company_id,
						supp.firm_name AS supp_firm_name 
					FROM txt_company AS supp 
					WHERE supp.delete_tag='FALSE' 
					AND firm_type='Supplier' 
					ORDER BY firm_name) AS Supplier ,
					
					( SELECT buy.company_id AS buy_company_id,
						buy.firm_name AS buy_firm_name 
					FROM txt_company AS buy 
					WHERE buy.delete_tag='FALSE' 
					AND firm_type='Buyer' 
					ORDER BY firm_name) AS Buyer					
		WHERE delete_tag='FALSE' 
		AND vou_type='Advance Payment' 
		AND supplier_account_code=supp_company_id
		AND buyer_account_code=buy_company_id
		ORDER BY  supp_firm_name,buy_firm_name
		) as t3
