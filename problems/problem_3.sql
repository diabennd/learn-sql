/* Implement of these syntaxes
 	- JOIN
 	- GROUP BY
 	- Aggregation Functions
*/ 

SELECT 
	skills,
	count(sjob_dim) AS num_of_jobs, 
	ROUND(AVG(job_posts.salary_year_avg), 2) AS average_salary
FROM 
	job_postings_fact AS job_posts
LEFT JOIN 
	skills_job_dim AS sjob_dim
    	ON job_posts.job_id = sjob_dim.job_id
LEFT JOIN 
	skills_dim AS sd
    	ON sjob_dim.skill_id = sd.skill_id
WHERE 
	job_posts.salary_year_avg IS NOT NULL
GROUP BY 
	sd.skills
ORDER BY num_of_jobs DESC

