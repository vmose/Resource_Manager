-- analyses/staff_by_department.sql
SELECT business_group, COUNT(DISTINCT(staff_id)) AS staff_count
FROM {{ ref('final_staff_model') }}
GROUP BY business_group;
