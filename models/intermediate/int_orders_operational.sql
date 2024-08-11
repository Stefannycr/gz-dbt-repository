select
    o.orders_id
    ,o.date_date
    ,round(o.margin + s.shipping_fee - s.logcost - cast(s.ship_cost as float64),2) as operational_margin
    ,o.revenue
    ,o.quantity
    ,o.purchase_cost
    ,o.margin
    ,s.shipping_fee
    ,s.logcost
    ,s.ship_cost
from {{ref("int_orders_margin")}} o
left join {{ref("stg_raw__ship")}} s
    using (orders_id)
order by orders_id desc