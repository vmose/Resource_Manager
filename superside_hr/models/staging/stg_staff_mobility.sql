with staff_mobility as (
    select 
        Name,
        date_of_mobility,
        previous_role,
        previous_manager,
        previous_job_level,
        previous_functional_group
    from `glass-mantra-128509.superside_hr.staff_mobility`
)
select * from staff_mobility;
