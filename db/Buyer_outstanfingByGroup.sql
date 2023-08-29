SELECT * FROM 
	(SELECT voucher_date, 
		bill_entry_id, 
		bill_number, 
		bill_date, 
		supplier_account_code, 
		supp_firm_name, 
		buyer_account_code, 
		buy_firm_name, 
		bill_amount , 
		DATEDIFF(CURDATE(),bill_date) AS days 
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
				  AND group_id='87'
			      ORDER BY firm_name) AS Buyer
	WHERE delete_tag='FALSE' 
	AND supplier_account_code=supp_company_id 
	AND buyer_account_code=buy_company_id 
	AND bill_entry_id NOT IN (SELECT bill_entry_id 
				  FROM txt_payment_bill_entry 
				  WHERE delete_tag='FALSE' 
				  AND bill_payment_type='Full') 
	AND buyer_account_code IN ( SELECT company_id 
				    FROM txt_company 
				    WHERE delete_tag='FALSE' 
				    AND firm_type='Buyer' 
				    AND group_id='87') 
	ORDER BY buy_firm_name,supp_firm_name,bill_date ) AS t1 

LEFT JOIN (SELECT bill_entry_id AS t2_bill_entry_id , 
		  payment_entry_id, 
		  payment_entry_vou_date, 
		  dis_amount, 
		  deduction_amount, 
		  bill_gr_amt, 
		  payment_received, 
		  balance_amount 
	   FROM txt_payment_bill_entry 
	   WHERE delete_tag='FALSE' 
	   ORDER BY payment_entry_vou_date ASC, 
		    payment_entry_id ASC ) AS t2 
ON t1.bill_entry_id=t2.t2_bill_entry_id