{{ config(
materialized="incremental",
unique_key ='order_id',
incremental_strategy= "merge"
) }}
select * from {{source('datafeed_shared_schema','Raw_order')}} 
