with cleaned_staff_mobility as (
    select 
        Name,
        `Date of Mobility` as mobility_date,
        `Previous Role` as previous_role,
        `Previous Manager` as previous_manager,
        `Previous Job Level` as previous_job_level,
        `Previous Functional Group` as previous_functional_group
    from `glass-mantra-128509.superside_hr.staff_mobility`
)
select * from cleaned_staff_mobility;
