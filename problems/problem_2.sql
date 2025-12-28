-- Get 

SELECT job_title, job_location, salary_year_avg, job_via
FROM job_postings_fact
WHERE 
    (job_title LIKE '%Data%' OR job_title LIKE '%Business%') 
    AND (
        job_title LIKE '%analyst%' AND job_title NOT LIKE '%senior%'
    )