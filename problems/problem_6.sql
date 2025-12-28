SELECT 
	job_title_short,
	job_via,
	salary_year_avg
FROM (
	SELECT * 
	FROM january_jobs
	UNION ALL
	SELECT * 
	FROM february_jobs
	UNION ALL
	SELECT * 
	FROM march_jobs
) AS quarter_1_jobs
WHERE salary_year_avg > 70000





