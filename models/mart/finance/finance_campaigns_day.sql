select
    f.date_date,
    (operational_margin-ads_cost) as ads_margin,
    f.average_basket,
    f.operational_margin,
    c.ads_cost,
    f.margin,
    f.purchase_cost,
    f.shipping_fee,
    f.logcost,
    f.ship_cost,
    f.quantity, 
    c.impression,
    c.clicks
    
from {{ref("finance_days")}} f
left join {{ref("int_campaigns_day")}} c
using(date_date)