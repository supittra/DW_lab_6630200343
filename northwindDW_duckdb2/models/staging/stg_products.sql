
with source as (
    select * 
    from {{ source('northwind', 'products - products') }}
    where supplier_id not like '%;%'
)
select
    *,
    current_timestamp() as ingestion_timestamp
from source