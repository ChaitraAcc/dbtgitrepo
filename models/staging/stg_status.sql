select * from {{ ref('snp_status') }} where dbt_valid_to = 'null'
