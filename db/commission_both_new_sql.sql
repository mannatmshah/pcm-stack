SELECT  SUM(total_bill_amount_bill) AS total_bill_amount_bill, 
		SUM(total_discount_bill) AS total_discount_bill, 
		SUM(total_gr_bill) AS total_gr_bill, 
		SUM(total_bill_payment_bill) AS total_bill_payment_bill, 
		AVG(supp_comm_bill) AS supp_comm_bill, 
		SUM(total_discount_pay) AS total_discount_pay, 
		SUM(total_gr_pay) AS total_gr_pay, 
		SUM(total_payment_pay) AS total_payment_pay, 
		AVG(supp_comm_pay) AS supp_comm_pay, 
		pay_supplier_name  ,
		pay_group_name
		FROM 

		(  SELECT total_bill_amount AS total_bill_amount_bill,
			total_discount AS total_discount_bill,
			total_gr AS total_gr_bill,
			total_payment AS total_bill_payment_bill,
			supp_comm AS supp_comm_bill,
			'0' AS total_discount_pay,
			'0' AS total_gr_pay,
			'0' AS total_payment_pay,
			supp_comm  AS supp_comm_pay,
			bill_supplier_name AS pay_supplier_name,
			bill_supp_group_name As pay_group_name
		FROM 
		(SELECT supp_firm_name AS bill_supplier_name , 
				supp_group_name AS bill_supp_group_name,
				supp_company_id AS bill_supp_company_id,
				sum(bill_amount ) AS total_bill_amount,
				AVG(comm_per) AS supp_comm
		FROM txt_bill_entry ,( SELECT supp.company_id AS supp_company_id,
									supp.firm_name AS supp_firm_name ,
									supp.commission_percentage AS comm_per,
									grp.group_name AS supp_group_name
							FROM txt_company AS supp   ,txt_group_master AS grp
							WHERE supp.delete_tag='FALSE' 
							AND firm_type='Supplier' 
							AND grp.group_id=supp.group_id  ORDER BY firm_name) AS Supplier 
		WHERE delete_tag='FALSE' AND supp_company_id=supplier_account_code  AND bill_date>='2020-04-01' AND bill_date<='2021-03-31'  GROUP BY bill_supplier_name 
		ORDER BY bill_supplier_name  ) AS t1 

		LEFT JOIN 
		(SELECT SUM(PAY_BILL.dis_amount) AS total_discount, 
							SUM(PAY_BILL.bill_gr_amt) AS total_gr, 
							SUM(PAY_BILL.payment_received) AS total_payment, 
							supplier_account_code AS pay_supp_company_id
					FROM txt_payment_entry_main AS MAIN ,txt_payment_bill_entry AS PAY_BILL
					
					WHERE MAIN.delete_tag='FALSE'   AND PAY_BILL.delete_tag='FALSE'   
					AND MAIN.payment_entry_id=PAY_BILL.payment_entry_id
					AND bill_date>='2020-04-01'  AND bill_date<='2021-03-31'
					GROUP BY MAIN.supplier_account_code  
					
					ORDER BY MAIN.supplier_account_code ) AS t2 

		ON bill_supp_company_id=pay_supp_company_id   UNION  SELECT 

		'0' AS total_bill_amount_bill,
		'0' AS total_discount_bill,
		'0' AS total_gr_bill,
		'0' AS total_bill_payment_bill,
		AVG(comm_per) AS supp_comm_bill,
		sum(discount_amount) AS total_discount_pay, 
		sum(gr_amount) AS total_gr_pay, 
		sum(payment_amount) AS total_payment_pay, 
		AVG(comm_per) AS supp_comm_pay,
		supp_firm_name  AS pay_supplier_name,
		supp_group_name AS pay_group_name
		FROM txt_payment_entry_main ,( SELECT supp.company_id AS supp_company_id,
										supp.firm_name AS supp_firm_name ,
										supp.commission_percentage AS comm_per,
										grp.group_name AS supp_group_name
								FROM txt_company AS supp ,txt_group_master AS grp
								WHERE supp.delete_tag='FALSE' 
								AND firm_type='Supplier' 
								AND grp.group_id=supp.group_id   ORDER BY firm_name) AS Supplier
		WHERE delete_tag='FALSE'  AND supp_company_id=supplier_account_code  AND voucher_date>='2020-04-01'  AND voucher_date<='2021-03-31'  GROUP BY supp_firm_name ,supp_group_name 
		 ) U1 
		GROUP BY pay_supplier_name ,pay_group_name
		ORDER BY pay_supplier_name ,pay_group_name 
