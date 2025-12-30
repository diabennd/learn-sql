-- Inner Join
SELECT * 
FROM job_postings_fact AS jf
INNER JOIN company_dim AS cd
	ON jf.company_id = cd.company_id;

-- Outer Join
SELECT * FROM employee_demographics as dem
RIGHT OUTER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- Self Join
SELECT * 
FROM job_postings_fact AS jf
JOIN job_postings_fact AS jf2
	ON jf.job_id = jf2.job_id;


-- Joining Multiple Tables
SELECT 
	skills,
	count(sjob_dim) AS num_of_jobs, 
	ROUND(AVG(job_posts.salary_year_avg), 2) AS average_salary
FROM job_postings_fact AS job_posts
LEFT JOIN skills_job_dim AS sjob_dim
	ON job_posts.job_id = sjob_dim.job_id
LEFT JOIN skills_dim AS sd
	ON sjob_dim.skill_id = sd.skill_id



