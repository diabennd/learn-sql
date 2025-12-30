SELECT 
    job_title_short, 
    job_location,
    CASE 
        WHEN job_location = 'Anywhere' THEN 'Remote'
        ELSE'Onsite'
    END AS location_category
FROM job_postings_fact;
