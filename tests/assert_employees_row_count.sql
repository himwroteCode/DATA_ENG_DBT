-- Expect 20 employees: 10 axi + 10 asp from dummy data
select count(*) as row_count
from {{ ref('employees') }}
having count(*) != 20
