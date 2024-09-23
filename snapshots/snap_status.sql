{% snapshot snp_status %}
    {{
        config(
            target_schema='snapshot',
            unique_key='status_id',
            strategy='timestamp',
            updated_at='status_date'
        )
    }}
 
    select * from {{ source('stripe', 'status') }}
{% endsnapshot %}
   