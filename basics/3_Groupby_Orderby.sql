-- Group By and Aggregation
SELECT * FROM employee_demographics;
SELECT * FROM employee_salary;

SELECT gender, AVG(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age), COUNT(age)
FROM employee_demographics
GROUP BY gender
;

-- Order By
SELECT * 
FROM employee_demographics
ORDER BY gender, age
;

SELECT * 
FROM employee_salary
ORDER BY salary DESC
;
