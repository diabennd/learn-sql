SELECT * 
FROM parks_and_recreation.employee_demographics;

-- Inner Join
SELECT * 
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON sal.employee_id = dem.employee_id;

-- Outer Join
SELECT * FROM employee_demographics as dem
RIGHT OUTER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- Self Join


-- Joining Multiple Tables




