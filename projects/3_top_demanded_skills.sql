-- What are the most in-demand skills for data analysts?

SELECT 
	skills, 
	COUNT(skills_job_dim.skill_id) skill_count
FROM skills_job_dim 
INNER JOIN job_postings_fact 
	ON skills_job_dim.job_id = job_postings_fact.job_id 
INNER JOIN skills_dim
	ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
	job_title_short = 'Data Analyst'
GROUP BY skills
ORDER BY skill_count DESC
LIMIT 5


