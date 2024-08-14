select
    products_id,
    date_date,
    orders_id,
    revenue,
    quantity,
    CAST(purchase_price AS FLOAT64) as purchase_price,
    ROUND(CAST(P.purchase_price as float64)*s.quantity,2) as purchase_cost,
    round(s.revenue,2) - ROUND(CAST(P.purchase_price as float64)*s.quantity,2) as margin
FROM {{ref("stg_raw__sales")}} s
left join {{ref("stg_raw__product")}} p
USING(products_id)