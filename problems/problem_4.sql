/* Implement of these syntaxes
	- Temporary Table
	- Date Functions
*/ 

-- Get January job postings
CREATE TEMPORARY TABLE january_jobs AS 
	SELECT 
		* 
	FROM job_postings_fact
	WHERE 
		EXTRACT(MONTH FROM job_posted_date) = 1;

-- Get February job postings
CREATE TEMPORARY TABLE february_jobs AS 
	SELECT 
		* 
	FROM job_postings_fact
	WHERE 
		EXTRACT(MONTH FROM job_posted_date) = 2;

-- Get March job postings
CREATE TEMPORARY TABLE march_jobs AS 
	SELECT 
		* 
	FROM job_postings_fact
	WHERE 
		EXTRACT(MONTH FROM job_posted_date) = 3;



