with staff_current as (
    select 
        Name,
        Email,
        Role,
        Job_Level AS job_level,
        Manager_Email AS Manager,
        Start_date,
        TRIM(Nationality) AS nationality,
        TRIM(Residence) AS residence,
        Gender,
        Business_Group AS business_group
    from  `glass-mantra-128509.superside_hr.staff_current`
)
select * from staff_current;
