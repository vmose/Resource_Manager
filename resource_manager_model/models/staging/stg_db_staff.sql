WITH db_staff AS (
    SELECT 
        staff_id,
        name,
        username,
        email,
        position AS role,
        styles, 
        industries, 
        software, 
        citizenship,
        residence,
        offboarded_at,
        created_at
        position_level AS job_level
    FROM `glass-mantra-128509.superside_hr.db_staff`
)
SELECT * FROM db_staff;
