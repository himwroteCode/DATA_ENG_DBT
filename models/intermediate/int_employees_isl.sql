select
    mv.*,
    lc.hr_client_id,
    el.legal_id
from {{ ref('int_employees_mv') }} mv
left join {{ source('isl_bronze', 'vw_lookup_employee_and_legal_id') }} el
    on mv.employee_id = el.employee_id
    and mv.source = el.source
left join {{ source('isl_bronze', 'vw_lookup_source_and_client_id') }} lc
    on mv.client_id = lc.client_id
    and mv.source = lc.source
