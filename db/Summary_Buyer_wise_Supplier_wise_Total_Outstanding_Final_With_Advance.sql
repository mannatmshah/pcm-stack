     SELECT *
     FROM
       (
         SELECT
           '1'                         AS SEQ
         , Buy_Supp_Pay.buy_firm_name  AS buy_firm_name
         , Buy_Supp_Pay.supp_firm_name AS supp_firm_name
         , tot_bill_amt
         , Discount
         , Deduction
         , GR
         , Pay
         , (tot_bill_amt - Discount - Deduction - GR - Pay ) AS BAL
         , ''                                                AS REMARK
         FROM
           (
             SELECT
               Supplier.firm_name AS supp_firm_name
             , Buyer.firm_name    AS buy_firm_name
             , SUM( bill_amount)  AS tot_bill_amt
             FROM
               txt_bill_entry
             , view_supplier AS Supplier
             , view_buyer    AS Buyer
             WHERE
               txt_bill_entry.delete_tag='FALSE'
               AND supplier_account_code=Supplier.company_id
               AND buyer_account_code   =Buyer.company_id
               AND bill_entry_id NOT IN
               (
                 SELECT
                   bill_entry_id
                 FROM
                   txt_payment_bill_entry
                 WHERE
                   delete_tag           ='FALSE'
                   AND bill_payment_type='Full'
               )
               -- AND buyer_account_code='101'
               AND bill_date <='2022-03-31'
             GROUP BY
               buy_firm_name
             , supp_firm_name
           )
           AS Buy_Supp_Bill
         , (
             SELECT
               buy_firm_name
             , supp_firm_name
             , Discount
             , Deduction
             , GR
             , Pay
             FROM
               (
                 SELECT
                   buy_firm_name
                 , supp_firm_name
                 , IFNULL(SUM(bill_amount),0)      AS BILL_AMT
                 , IFNULL(SUM(dis_amount),0)       AS Discount
                 , IFNULL(SUM(deduction_amount),0) AS Deduction
                 , IFNULL(SUM(bill_gr_amt),0)      AS GR
                 , IFNULL(SUM(payment_received),0) AS Pay
                 FROM
                   (
                     SELECT
                       voucher_date
                     , bill_entry_id
                     , bill_number
                     , bill_date
                     , supplier_account_code
                     , Supplier.firm_name AS supp_firm_name
                     , buyer_account_code
                     , Buyer.firm_name AS buy_firm_name
                     , bill_amount
                     , discount_percentage
                     , DATEDIFF(CURDATE(),bill_date) AS days
                     FROM
                       txt_bill_entry
                     , view_supplier AS Supplier
                     , view_buyer    AS Buyer
                     WHERE
                       txt_bill_entry.delete_tag='FALSE'
                       AND supplier_account_code=Supplier.company_id
                       AND buyer_account_code   =Buyer.company_id
                       AND bill_entry_id NOT IN
                       (
                         SELECT
                           bill_entry_id
                         FROM
                           txt_payment_bill_entry
                         WHERE
                           delete_tag           ='FALSE'
                           AND bill_payment_type='Full'
                       )
                       AND bill_date <='2022-03-31'
                     ORDER BY
                       buy_firm_name
                     , supp_firm_name
                     , bill_date
                     , bill_number
                   )
                   AS t1
                   LEFT JOIN
                     (
                       SELECT
                         bill_entry_id AS t2_bill_entry_id
                       , payment_entry_id
                       , payment_entry_vou_date
                       , dis_amount
                       , deduction_amount
                       , bill_gr_amt
                       , payment_received
                       , balance_amount
                       FROM
                         txt_payment_bill_entry
                       WHERE
                         delete_tag='FALSE'
                       ORDER BY
                         payment_entry_vou_date ASC
                       , payment_entry_id ASC
                     )
                     AS t2
                     ON
                       t1.bill_entry_id=t2.t2_bill_entry_id
                 GROUP BY
                   buy_firm_name
                 , supp_firm_name
               )
               AS pr
           )
           AS Buy_Supp_Pay
         WHERE
           Buy_Supp_Pay.buy_firm_name     =Buy_Supp_Bill.buy_firm_name
           AND Buy_Supp_Pay.supp_firm_name=Buy_Supp_Bill.supp_firm_name
         ORDER BY
           Buy_Supp_Pay.buy_firm_name
         , Buy_Supp_Pay.supp_firm_name
       )
       AS UN1
     UNION
     SELECT *
     FROM
       (
         SELECT
           '2' AS SEQ
         , buy_firm_name
         , supp_firm_name
         , '0'                               AS tot_bill_amt
         , '0'                               AS Discount
         , '0'                               AS Deduction
         , gr_amount                         AS GR
         , payment_amount                    AS Pay
         , (0 - gr_amount - payment_amount ) AS BAL
         ,'ADVANCE'                          AS REMARK
         FROM
           txt_payment_entry_main
         , (
             SELECT
               supp.company_id AS supp_company_id
             , supp.firm_name  AS supp_firm_name
             FROM
               txt_company AS supp
             WHERE
               supp.delete_tag='FALSE'
               AND firm_type  ='Supplier'
             ORDER BY
               firm_name
           )
           AS Supplier
         , (
             SELECT
               buy.company_id AS buy_company_id
             , buy.firm_name  AS buy_firm_name
             FROM
               txt_company AS buy
             WHERE
               buy.delete_tag='FALSE'
               AND firm_type ='Buyer'
             ORDER BY
               firm_name
           )
           AS Buyer
         WHERE
           delete_tag               ='FALSE'
           AND supplier_account_code=supp_company_id
           AND buyer_account_code   =buy_company_id
           AND
           (
             vou_type   ='Advance Payment'
             OR vou_type='GR After Payment'
           )
           AND voucher_date<='2022-03-31'
         ORDER BY
           supp_firm_name
         , buy_firm_name
       )
       AS UN2
     ORDER BY
       buy_firm_name
     , supp_firm_name
     , SEQ