-- analyses/staff_by_department.sql
SELECT department, COUNT(*) AS staff_count
FROM {{ ref('final_staff_model') }}
GROUP BY department;
