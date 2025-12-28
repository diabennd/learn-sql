# Select all column 
SELECT * 
FROM employee_demographics;

# Select column based on their names and math operation 
SELECT first_name, 
last_name, 
birth_date,
age, 
age + 14*1*0
FROM parks_and_recreation.employee_demographics;

# Select unique value  
SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;


