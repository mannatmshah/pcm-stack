SELECT bill_supplier_name,
							bill_supp_group_name,
							bill_supp_company_id,
							total_bill_amount,
							total_discount,
							total_gr,
							total_payment AS total_bill_payment,
							pay_supp_company_id,
							supp_comm
					FROM 
					(SELECT supp_firm_name AS bill_supplier_name , 
							supp_group_name AS bill_supp_group_name,
							supp_company_id AS bill_supp_company_id,
							SUM(bill_amount ) AS total_bill_amount,
							AVG(comm_per) AS supp_comm
					FROM txt_bill_entry ,( SELECT supp.company_id AS supp_company_id,
												  supp.firm_name AS supp_firm_name ,
												  supp.commission_percentage AS comm_per,
												  grp.group_name AS supp_group_name
											FROM txt_company AS supp ,txt_group_master AS grp
											WHERE supp.delete_tag='FALSE' 
											AND firm_type='Supplier'
											AND grp.group_id=supp.group_id  ORDER BY firm_name) AS Supplier 
					WHERE delete_tag='FALSE'  AND supp_company_id=supplier_account_code  AND bill_date>='2020-04-01'  AND bill_date<='2021-03-31'  GROUP BY supp_firm_name ,supp_company_id,supp_group_name 
					ORDER BY supp_firm_name ,supp_company_id,supp_group_name  ) AS t1 

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
					
					ORDER BY MAIN.supplier_account_code  ) AS t2 

					ON bill_supp_company_id=pay_supp_company_id 
