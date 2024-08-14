select 
    date_date
    ,count(orders_id) as nb_transactions
    ,round(sum(revenue),0) as revenue
    ,round(avg(revenue),1) as average_basket
    ,round(sum(margin),0) as margin
    ,round(sum(operational_margin),0) as operational_margin
    ,ROUND(SUM(purchase_cost),0) as purchase_cost 
    ,ROUND(SUM(shipping_fee),0) AS shipping_fee 
    ,ROUND(SUM(logcost),0) AS logcost 
    ,ROUND(SUM(cast(ship_cost as float64)),0) AS ship_cost 
    ,SUM(quantity) AS quantity 
    
from{{ref("int_orders_operational")}}
GROUP by date_date
order by (date_date) desc