SELECT com.firm_name,BILL_AMT, DIS , GR ,  Pay_Recd, (BILL_AMT - Pay_Recd - GR -DIS ) AS BAL FROM
 ( SELECT bill.buyer_account_code,SUM(payment_received) AS Pay_Recd ,SUM(bill_gr_amt) AS GR , SUM(dis_amount) AS DIS
FROM 	txt_bill_entry AS bill , 
	
	txt_payment_bill_entry AS pay_bill
WHERE bill.bill_entry_id=pay_bill.bill_entry_id 
AND bill.bill_date >'2021-04-01'
AND pay_bill.bill_date >'2021-04-01'
AND PAY_BILL.delete_tag='FALSE'
AND BILL.delete_tag='FALSE'
GROUP BY bill.buyer_account_code ) AS Payment_total ,

( SELECT bill.buyer_account_code, SUM(bill.bill_amount) AS BILL_AMT
FROM 	txt_bill_entry AS bill
	
WHERE  BILL.delete_tag='FALSE'
AND bill.bill_date >'2021-04-01'

GROUP BY bill.buyer_account_code ) AS bill_total ,
txt_company AS com 
WHERE com.company_id=bill_total.buyer_account_code  AND Payment_total.buyer_account_code=bill_total.buyer_account_code