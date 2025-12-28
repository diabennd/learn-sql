-- Filter salary_year_avg that greater than average of all salary
WITH data_analyst_salary_avg AS (
	SELECT 
		job_title_short,
		name AS company_name,
		job_location,
		job_via,
		company_dim.link,
		salary_year_avg
	FROM job_postings_fact AS job_postings
	INNER JOIN company_dim 
		ON job_postings.company_id = company_dim.company_id
	WHERE
		job_postings.salary_year_avg IS NOT NULL
		AND
		company_dim.link IS NOT NULL 
		AND 
		job_postings.job_title_short = 'Data Analyst'
		AND
		job_postings.salary_year_avg >
		(
			SELECT AVG(salary_year_avg) FROM job_postings_fact
		)
	
) 
SELECT * FROM data_analyst_salary_avg;



-- Filter null in column company_dim.link
WITH job_links AS (
	SELECT company_dim."name", job_title_short, job_via, link 
		FROM job_postings_fact AS job_postings
	INNER JOIN company_dim 
		ON job_postings.company_id = company_dim.company_id
	WHERE 
		company_dim.link IS NOT NULL
)

SELECT * FROM job_links 
WHERE job_title_short LIKE 'Data Analyst';