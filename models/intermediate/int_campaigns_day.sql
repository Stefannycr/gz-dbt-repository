select
    date_date,
    sum(ads_cost) as ads_cost,
    sum(impression) as impression,
    sum(click) as clicks   
FROM{{ref("int_campaigns")}}
GROUP by date_date
order by (date_date) desc