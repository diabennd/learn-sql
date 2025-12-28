WITH job_via_data AS (
	SELECT 
		job_via, 
		COUNT(job_via) AS job_via_count
	FROM job_postings_fact AS jf
	INNER JOIN skills_job_dim ON jf.job_id = skills_job_dim.job_id
	INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
	WHERE 
		job_title_short LIKE 'Data Analyst' 
		AND salary_year_avg IS NOT NULL
	GROUP BY jf.job_via
), ordered_data AS (
	SELECT 
		job_via,
		job_via_count,
		ROW_NUMBER() OVER(ORDER BY job_via_count DESC) AS job_via_id
	FROM job_via_data	
)

-- ROLLING TOTAL USING WINDOW FUNCTIONS
SELECT 
	job_via_id,
	job_via, 
	job_via_count,
	SUM(job_via_count) OVER(ORDER BY job_via_count DESC) AS rolling_total
FROM ordered_data



