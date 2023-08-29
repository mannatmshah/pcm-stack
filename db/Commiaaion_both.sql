SELECT  SUM(total_bill_amount_bill) AS total_bill_amount_bill, 
		SUM(total_discount_bill) AS total_discount_bill, 
		SUM(total_gr_bill) AS total_gr_bill, 
		SUM(total_bill_payment_bill) AS total_bill_payment_bill, 
		AVG(supp_comm_bill) AS supp_comm_bill, 
		SUM(total_discount_pay) AS total_discount_pay, 
		SUM(total_gr_pay) AS total_gr_pay, 
		SUM(total_payment_pay) AS total_payment_pay, 
		AVG(supp_comm_pay) AS supp_comm_pay, 
		 pay_supplier_name  
		FROM 

(

SELECT total_bill_amount AS total_bill_amount_bill, 
		total_discount AS total_discount_bill, 
		total_gr AS total_gr_bill, 
		total_payment AS total_bill_payment_bill, 
		supp_comm AS supp_comm_bill, 
		'0' AS total_discount_pay, 
		'0' AS total_gr_pay, 
		'0' AS total_payment_pay, 
		supp_comm AS supp_comm_pay, 
		bill_supplier_name AS pay_supplier_name 
FROM (SELECT supp_firm_name AS bill_supplier_name , 
			 SUM(bill_amount ) AS total_bill_amount, 
			 AVG(comm_per) AS supp_comm 
	  FROM txt_bill_entry ,( SELECT supp.company_id AS supp_company_id, 
									supp.firm_name AS supp_firm_name , 
									supp.commission_percentage AS comm_per 
							 FROM txt_company AS supp 
							 WHERE supp.delete_tag='FALSE' 
							 AND firm_type='Supplier' 
							 ORDER BY firm_name) AS Supplier 
	WHERE delete_tag='FALSE' 
	AND supp_company_id=supplier_account_code 
	AND bill_date>='2019-04-01' 
	AND bill_date<='2021-03-31' 
	GROUP BY bill_supplier_name 
	ORDER BY bill_supplier_name ) AS t1 
LEFT JOIN (SELECT SUM(discount_amount) AS total_discount, 
					SUM(gr_amount) AS total_gr, 
					SUM(payment_amount) AS total_payment, 
					supp_firm_name AS pay_supplier_name 
			FROM txt_payment_entry_main ,( SELECT supp.company_id AS supp_company_id, 
													supp.firm_name AS supp_firm_name 
										   FROM txt_company AS supp 
										   WHERE supp.delete_tag='FALSE' 
										   AND firm_type='Supplier' 
										   ORDER BY firm_name) AS Supplier 
			WHERE delete_tag='FALSE' 
			AND supp_company_id=supplier_account_code 
			GROUP BY supp_firm_name 
			ORDER BY supp_firm_name ) AS t2 
ON bill_supplier_name=pay_supplier_name 

UNION 
 
SELECT '0' AS total_bill_amount_bill, 
		'0' AS total_discount_bill, 
		'0' AS total_gr_bill, 
		'0' AS total_bill_payment_bill, 
		AVG(comm_per) AS supp_comm_bill, 
		SUM(discount_amount) AS total_discount_pay, 
		SUM(gr_amount) AS total_gr_pay, 
		SUM(payment_amount) AS total_payment_pay, 
		AVG(comm_per) AS supp_comm_pay, 
		supp_firm_name AS pay_supplier_name 
FROM txt_payment_entry_main ,( SELECT supp.company_id AS supp_company_id, 
										supp.firm_name AS supp_firm_name , 
										supp.commission_percentage AS comm_per 
								FROM txt_company AS supp 
								WHERE supp.delete_tag='FALSE' 
								AND firm_type='Supplier' 
								ORDER BY firm_name) AS Supplier 
WHERE delete_tag='FALSE' 
AND supp_company_id=supplier_account_code 
AND voucher_date>='2019-04-01' 
AND voucher_date<='2021-03-31' 
GROUP BY supp_firm_name 

) U1 

GROUP BY pay_supplier_name
ORDER BY pay_supplier_name
