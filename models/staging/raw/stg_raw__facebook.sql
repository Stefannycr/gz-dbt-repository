with 

source as (

    select * from {{ source('raw', 'facebook') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name as campaing_name,
        ifnull(CAST(ads_cost as float64),0) as ads_cost,
        concat(date_date, '_', campaign_key) as date_campaign,
        impression,
        click

    from source

)

select * from renamed
