-- Question: What are the top-paying data analyst jobs?

WITH top_paying_remote_jobs AS (
	SELECT 
		job_postings.job_id,
		job_title,
		job_schedule_type,
		job_location,
		salary_year_avg,
		job_posted_date::DATE
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
)

SELECT * 
FROM top_paying_remote_jobs AS top_remote
INNER JOIN skills_job_dim AS skills_job
	ON top_remote.job_id = skills_job.job_id
INNER JOIN skills_dim AS s_dim
	ON skills_job.skill_id = s_dim.skill_id


