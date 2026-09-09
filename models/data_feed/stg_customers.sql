-- models/staging/stg_customers.sql

with source as (

    select * from {{ source('data_feed', 'raw_customer') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name
    from source

)

select * from renamed
