-- Axi employees merged with odata should have matching first names
select
    employee_id,
    first_name,
    ssn
from {{ ref('employees') }}
where source = 'axi'
  and employee_id in (
      select employeeid from {{ source('axi_odata', 'vw_employees') }}
  )
  and (
      first_name is null
      or first_name != (
          select firstname
          from {{ source('axi_odata', 'vw_employees') }} od
          where od.employeeid = employees.employee_id
            and od.source = employees.source
      )
  )
