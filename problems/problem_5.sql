-- Get remote job and identify most required skills

WITH remote_job_skills AS (
	SELECT 
		skill_id, 
		COUNT(skill_id) skill_count
	FROM skills_job_dim AS sjob_dim
	INNER JOIN job_postings_fact AS job_fact 
		ON sjob_dim.job_id = job_fact.job_id
	WHERE 
		job_fact.job_work_from_home = TRUE
		AND 
		job_fact.job_title_short LIKE 'Data Scientist'
	GROUP BY skill_id
)

SELECT 
	rjob.skill_id,
	skills,
	rjob.skill_count
FROM remote_job_skills rjob
INNER JOIN skills_dim 
	ON rjob.skill_id = skills_dim.skill_id
ORDER BY skill_count DESC
LIMIT 10
