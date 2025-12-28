-- Most optimal skills for data analyst


WITH demanded_skills AS (
	SELECT
		skills_dim.skills,
		skills_dim.skill_id,
		COUNT(jf.job_id) skill_count
	FROM skills_job_dim AS sjd
	INNER JOIN job_postings_fact AS jf
		ON sjd.job_id = jf.job_id 
	INNER JOIN skills_dim
		ON sjd.skill_id = skills_dim.skill_id
	WHERE
		job_title_short = 'Data Analyst'
		AND 
		salary_year_avg IS NOT NULL
		AND 
		job_location = 'Anywhere'
	GROUP BY skills_dim.skill_id
), top_paying AS (
	SELECT 
		skills_dim.skill_id,
		ROUND(AVG(salary_year_avg), 0) AS average_salary
	FROM skills_job_dim AS sjd
	INNER JOIN job_postings_fact AS jf
		ON sjd.job_id = jf.job_id 
	INNER JOIN skills_dim
		ON sjd.skill_id = skills_dim.skill_id
	WHERE 
		job_title_short = 'Data Analyst'
		AND 
		salary_year_avg IS NOT NULL
		AND 
		job_location = 'Anywhere'
	GROUP BY skills_dim.skill_id
)

SELECT skills, skill_count, average_salary 
FROM demanded_skills 
INNER JOIN top_paying
	ON demanded_skills.skill_id = top_paying.skill_id
ORDER BY 
	skill_count DESC,
	average_salary DESC
LIMIT 25