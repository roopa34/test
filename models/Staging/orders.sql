{{ config(materialized='view') }}

WITH tb1 as(
    select
   order_id ,
user_id ,
order_date ,
status 

    from {{source('datafeed_shared_schema','Raw_order')}})
select * from tb1

