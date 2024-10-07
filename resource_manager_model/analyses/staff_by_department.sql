-- analyses/staff_by_department.sql
-- here I included a sample ad hoc query as an example though not part of the model
SELECT business_group, COUNT(DISTINCT(staff_id)) AS staff_count
FROM {{ ref('final_staff_model') }}
GROUP BY business_group;
