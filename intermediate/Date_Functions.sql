-- TYPE CASTING (::DATE, ::INT, etc)
SELECT * FROM job_postings_fact;

-- AT TIMEZONE



-- EXTRACT
SELECT 
	job_title_short,
	EXTRACT(MONTH FROM job_posted_date) AS job_posted_month,
	COUNT(job_id) AS job_count_per_month
FROM 
	job_postings_fact
WHERE
	job_title_short LIKE 'Data Analyst'
GROUP BY 
	job_posted_month, job_title_short
ORDER BY 
	job_posted_month;


