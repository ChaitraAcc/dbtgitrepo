{{ config(materialized="table", transient=false) }}
 
select
    id,
    first_name,
    last_name,
    iff(first_name = '{{ var('is_vip') }}',true,false) as is_vip
from {{ source("jaffle_shop", "customers") }}