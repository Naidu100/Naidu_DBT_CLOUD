-- models/staging/stg_orders.sql

with source as (

    select * from {{ source('data_feed', 'raw_orders') }}

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date
        
        -- INTENTIONAL OMISSION: The status column is excluded here 
        -- to simulate an upstream schema mismatch/omission error.
    from source

)

select * from renamed
