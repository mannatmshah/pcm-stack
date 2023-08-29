SELECT  sum(discount_amount) AS total_discount, 
		sum(gr_amount) AS total_gr, 
		sum(payment_amount) AS total_payment, 
		AVG(comm_per) AS supp_comm, 
		supp_firm_name AS pay_supplier_name ,
		supp_group_name AS pay_group_name
		
FROM txt_payment_entry_main ,( SELECT supp.company_id AS supp_company_id, 
									  supp.firm_name AS supp_firm_name , 
									  supp.commission_percentage AS comm_per ,
									  grp.group_name AS supp_group_name
							   FROM txt_company AS supp ,txt_group_master AS grp
							   WHERE supp.delete_tag='FALSE' 
							   AND firm_type='Supplier' 
							   AND grp.group_id=supp.group_id 
							   ORDER BY firm_name) AS Supplier 
WHERE delete_tag='FALSE' 
AND supp_company_id=supplier_account_code 
AND voucher_date>='2020-04-01' 
AND voucher_date<='2021-03-31' 
GROUP BY supp_firm_name,supp_group_name 
ORDER BY supp_firm_name,supp_group_name