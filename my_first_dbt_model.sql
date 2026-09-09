/ * 
my_first_dbt_model.sql
* /

{{config(materialized='table')}}

   with source_data as 

     select 1 as id 
     union all
     select null as id
     )

     select * from source_data;