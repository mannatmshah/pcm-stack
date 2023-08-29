SELECT
  Buy_Supp_Pay.buy_firm_name
, Buy_Supp_Pay.supp_firm_name
, tot_bill_amt
, Discount
, Deduction
, GR
, Pay
, (tot_bill_amt - Discount - Deduction - GR - Pay ) AS BAL
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