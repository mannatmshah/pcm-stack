SELECT * FROM 
	(SELECT supp_firm_name AS bill_supplier_name , 
			sum(bill_amount ) AS total_bill_amount
	FROM txt_bill_entry ,( SELECT supp.company_id AS supp_company_id,
						supp.firm_name AS supp_firm_name 
					FROM txt_company AS supp 
					WHERE supp.delete_tag='FALSE' 
					AND firm_type='Supplier' 
					ORDER BY firm_name) AS Supplier 
	WHERE delete_tag='FALSE' AND
	supp_company_id=supplier_account_code 
	AND bill_date>='2019-04-01' 
	AND bill_date<='2020-03-31' 
	GROUP BY supp_firm_name 
	ORDER BY supp_firm_name  ) AS t1 
	
	LEFT JOIN 
	(SELECT sum(discount_amount) AS total_discount, 
			sum(gr_amount) AS total_gr, 
			sum(payment_amount) AS total_payment, 
			supp_firm_name  AS pay_supplier_name
	FROM txt_payment_entry_main ,( SELECT supp.company_id AS supp_company_id,
						supp.firm_name AS supp_firm_name 
					FROM txt_company AS supp 
					WHERE supp.delete_tag='FALSE' 
					AND firm_type='Supplier' 
					ORDER BY firm_name) AS Supplier
	WHERE delete_tag='FALSE' AND
	supp_company_id=supplier_account_code
	GROUP BY supp_firm_name
	ORDER BY supp_firm_name  ) AS t2 
	
	ON bill_supplier_name=pay_supplier_name