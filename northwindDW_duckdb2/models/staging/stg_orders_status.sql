with source as (

    select * from {{ source('northwind', 'orders_status - orders_status') }}
)
select
    *,
    current_localtimestamp() as ingestion_timestamp
from source