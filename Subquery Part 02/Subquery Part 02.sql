-- Subquery Part 02 – Exercise 1
-- Run a query to determine the employees (first name, last name, salary, department id) that earn less than the average salary of the IT department.
SELECT first_name, last_name, salary, department_id 
FROM employees 
WHERE salary < 
ALL ( 
SELECT AVG( salary )
FROM employees 
WHERE department_id = 6 
) 
ORDER BY salary;

-- Subquery Part 02 – Exercise 2
-- Determine all of the employees earning more than the minimum salary earnt in the sales department.
SELECT first_name, last_name, salary, department_id 
FROM employees 
WHERE salary > 
ALL ( 
SELECT MIN( salary ) 
FROM employees 
WHERE department_id = 8 
) 
ORDER BY salary;
