-- Question: What are the top-paying data analyst jobs?

SELECT 
	job_postings.job_id,
	job_title,
	name AS company_name,
	job_schedule_type,
	job_location,
	salary_year_avg,
	job_via,
	job_posted_date
FROM job_postings_fact AS job_postings
LEFT JOIN company_dim
	ON job_postings.company_id = company_dim.company_id
WHERE 
	job_title_short = 'Data Analyst'
	AND
	job_work_from_home = TRUE 
	AND 
	salary_year_avg IS NOT NULL 
ORDER BY salary_year_avg DESC
LIMIT 10


