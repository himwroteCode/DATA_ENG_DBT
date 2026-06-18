select * from {{ ref('stg_employees_axi') }}
union all
select * from {{ ref('stg_employees_asp') }}
