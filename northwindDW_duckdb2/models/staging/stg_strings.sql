with source as (

    select * from {{ source('northwind', 'strings - strings') }}
)
select
    *,
    current_localtimestamp() as ingestion_timestamp
from source