/*
    -> 'term%'    Starts with 'term'
    -> '%term'    Ends with 'term'
    -> '%term%'   Contains 'term' anywhere 
    -> 't_m'      Has 't' as the first, 'm' as the third character, and any character in between
*/

SELECT
    job_title_short,
    job_via,
    salary_year_avg
FROM job_postings_fact
WHERE 
    job_title_short LIKE 'Data%'
;

SELECT
    job_title_short,
    job_via,
    salary_year_avg
FROM job_postings_fact
WHERE 
    job_title_short LIKE 'D__a'
;
