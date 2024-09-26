-- tests/no_future_mobility_dates.sql
select *
from {{ ref('stg_staff_mobility') }}
where mobility_date > CURRENT_DATE
