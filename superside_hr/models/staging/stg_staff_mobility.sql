WITH cleaned_staff_mobility AS (
    SELECT 
        Name,
        `Date of Mobility` AS mobility_date,
        `Previous Role` AS previous_role,
        `Previous Manager` AS previous_manager,
        `Previous Job Level` AS previous_job_level,
        `Previous Functional Group` AS previous_functional_group
    FROM `glass-mantra-128509.superside_hr.staff_mobility`
)
SELECT * FROM cleaned_staff_mobility;
