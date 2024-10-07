WITH staff_current AS (
    SELECT 
        Name,
        Email,
        Role,
        Job_Level AS job_level,
        Manager,
        Start_date,
        TRIM(Nationality) AS nationality,
        TRIM(Residence) AS residence,
        Gender,
        Business_Group AS business_group
    FROM `glass-mantra-128509.superside_hr.staff_current`
)
SELECT * FROM staff_current;
