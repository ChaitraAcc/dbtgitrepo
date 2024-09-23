{{
    config(
        materialized='incremental',
        unique_key='invoice_id'
    )
}}
 
with invoices as (
 
    select * from {{ ref('stg_invoices') }}
 
    {% if is_incremental() %}
        -- this filter will only be applied on an incremental run
        where invoice_date > (select max(invoice_date) from {{ this }})
    {% endif %}
),
 
invoice_final as (
    select
        *,
        '{{invocation_id}}' as batch_id
    from
        invoices
)
 
select * from invoice_final