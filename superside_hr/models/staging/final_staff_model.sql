WITH staff_current AS (
    SELECT
        c.Name,
        c.Email,
        c.Role,
        c.job_level,
        c.Manager,
        c.Start_date,
        c.nationality,
        c.residence,
        c.Gender,
        c.business_group
    FROM {{ ref('stg_staff_current') }} c
),
db_staff AS (
    SELECT
        d.staff_id,
        d.name,
        d.username,
        d.styles,
        d.industries, 
        d.software, 
        d.residence,
        d.offboarded_at,
        d.created_at,
        d.email,
        d.role AS db_role,
        d.job_level AS db_job_level,
        d.citizenship,
        d.residence AS db_residence
    FROM {{ ref('stg_db_staff') }} d
),
staff_mobility AS (
    SELECT
        m.Name,
        m.date_of_mobility,
        m.previous_role,
        m.previous_manager,
        m.previous_job_level,
        m.previous_functional_group
    FROM {{ ref('stg_staff_mobility') }} m
)
-- Unified staff model
SELECT
    COALESCE(sc.Name, db.name) AS name,
    COALESCE(sc.Email, db.email) AS email,
    COALESCE(sc.Role, db.db_role) AS current_role,
    COALESCE(sc.job_level, db.db_job_level) AS current_job_level,
    sc.Manager,
    sc.Start_date,
    COALESCE(sc.nationality, db.citizenship) AS nationality,
    COALESCE(sc.residence, db.db_residence) AS residence,
    sc.Gender,
    sc.business_group,
    
    -- Historical data from staff_mobility
    sm.previous_role,
    sm.previous_manager,
    sm.mobility_date,
    sm.previous_job_level,
    sm.previous_functional_group

FROM staff_current sc
LEFT JOIN db_staff db
    ON sc.Email = db.email
LEFT JOIN staff_mobility sm
    ON sc.Name = sm.Name;
