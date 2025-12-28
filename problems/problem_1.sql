-- Get job details for BOTH 'Data Analyst' or 'Business Analyst' in Boston or anywhere, and 
-- salary > 100000 for data analyst and > 70000 for business analyst

SELECT job_title_short, salary_year_avg, job_location
FROM job_postings_fact
WHERE 
    job_location IN ('Boston, MA', 'Anywhere')
    AND
    (
        (job_title_short LIKE 'Data Analyst' AND salary_year_avg > 100000)
        OR 
        (job_title_short LIKE 'Business Analyst' AND salary_year_avg > 70000)
    )
