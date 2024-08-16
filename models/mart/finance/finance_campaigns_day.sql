select
    f.date_date,
    (operational_margin-ifnull(ads_cost,0)) as ads_margin,
    f.average_basket,
    f.operational_margin,
    ifnull(c.ads_cost,0) as ads_cost,
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