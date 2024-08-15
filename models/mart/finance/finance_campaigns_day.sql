select
    f.date_date,
    (operational_margin-ads_cost) as ads_margin,
    average_basket
    operational_margin,
    ads_cost,
    margin,
    purchase_cost,
    shipping_fee,
    logcost,
    ship_cost,
    quantity, 
    impression,
    clicks,
    
from {{ref("finance_days")}} f
left join {{ref("int_campaigns_day")}} c
using(date_date)