with source as (

    select * from {{ source('northwind', 'privileges - privileges') }}
)
select
    *,
    current_localtimestamp() as ingestion_timestamp
from source