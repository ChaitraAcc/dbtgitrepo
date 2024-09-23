{% set payment_methods = ['bank_transfer','coupon','gift_card','credit_card']%}
 
with payment as (
    select * from {{ ref('stg_payment') }}
),
 
pivot as
    (
        select
            orderid,
                {% for method in payment_methods %}
            sum(case when paymentmethod = '{{ method }}' then amount else null end) as {{method}}_amount
                {% if not loop.last %}
                  ,
                {% endif%}
                {% endfor %}
 
        from payment
        group by orderid
    )
select * from pivot