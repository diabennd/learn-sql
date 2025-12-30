-- LENGTH
SELECT 
    LENGTH('Benny Way') -- 9

-- LEFT, RIGHT 
SELECT 
    LEFT('Benny Way', 3), -- Returns -> 'Ben'
    RIGHT('Benny Way', 3) -- Returns -> 'Way'


-- SUBSTRING => Extracts a part of a string, given a starting position and length.
SELECT 
    SUBSTRING('Benny Way', 1, 5) -- Returns -> 'Benny'


-- REPLACE => Replaces all occurrences of a substring within a string.
SELECT 
    REPLACE('Benny Way', 'Way', 'Arthur')


-- TRIM => Removes leading and trailing spaces (or other specified characters).
SELECT 
    TRIM('  Benny   ')



-- CONCAT
SELECT 
    first_name, last_name, 
    CONCAT(first_name, ' ', last_name) AS full_name
FROM employee_demographics;


