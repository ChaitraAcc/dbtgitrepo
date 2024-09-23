{{ config(store_failures_as="table") }}
 
select * from {{ ref('stg_payment') }}
where amount < 0