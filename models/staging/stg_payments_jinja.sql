{{ config(materialized="table", transient="false") }}
 
select
        id,
        orderid,
        paymentmethod,
        status,
        {{cents_to_dollors('amount')}} as amount,
        created,
        _batched_at
from {{ source("stripe", "payment") }}
 