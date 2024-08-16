select
 FORMAT_DATE('%Y-%m-01', date_date) AS month,
 sum(ads_margin) as ads_margin,
 sum(average_basket) AS average_basket,
 SUM(operational_margin) AS total_operational_margin,
 SUM(ads_cost) AS total_ads_cost,
 SUM(margin) AS total_margin,
 SUM(purchase_cost) AS total_purchase_cost,
 SUM(shipping_fee) AS total_shipping_fee,
 SUM(logcost) AS total_logcost,
 SUM(ship_cost) AS total_ship_cost,
 SUM(quantity) AS total_quantity,
 SUM(ifnull(impression,0)) AS total_impression,
 SUM(ifnull(clicks,0)) AS total_click
from{{ref("finance_campaigns_day")}}
GROUP BY month
order by (month) desc




