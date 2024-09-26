WITH cleaned_db_staff AS (
    SELECT 
        staff_id,
        name,
        email,
        position AS role,
        position_level AS job_level,
        citizenship,
        residence,
        created_at
    FROM `glass-mantra-128509.superside_hr.db_staff`
)
SELECT * FROM cleaned_db_staff;
