with 

source as (

    select * from {{ source('raw', 'criteo') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name as campaing_name,
        CAST(ads_cost as float64) as ads_cost,
        concat(date_date, '_', campaign_key) as date_campaing,
        impression,
        click

    from source

)

select * from renamed
