select
    date_date,
    sum(ads_cost) as t_ads_cost,
    sum(impression) as t_impression,
    sum(click) as t_clicks   
FROM{{ref("int_campaigns")}}
GROUP by date_date