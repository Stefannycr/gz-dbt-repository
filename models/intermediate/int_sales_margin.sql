select
    products_id
    ,(CAST(purchase_price as float64)*quantity) as purchase_cost
    ,(revenue-(CAST(purchase_price as float64)*quantity))/revenue AS MARGIN
FROM {{ref("stg_raw__sales")}}
left join {{ref("stg_raw__product")}}
USING(products_id)