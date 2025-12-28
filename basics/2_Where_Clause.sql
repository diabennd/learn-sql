-- Where Clause and Comparison Operator

SELECT * 
FROM employee_salary
WHERE salary >= 50PRIMARY000
;


SELECT * 
FROM employee_demographics
WHERE (first_name = 'Andy' and age = 34) or age > 40
;





-- Like Statement 
-- % and _
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'b%'


;

SELECT *
FROM employee_demographics
Where birth_date LIKE '1989%'
;

