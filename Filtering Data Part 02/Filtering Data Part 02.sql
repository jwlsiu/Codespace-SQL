-- Filtering Data Part 02 – Exercise 1
-- Display employees whose name begins with 'P' and whose salary is below 8000.
SELECT first_name, last_name, salary
FROM employees
WHERE first_name LIKE 'P%'
AND salary < 8000;

-- Filtering Data Part 02 – Exercise 2
-- Identify employees hired in 1997, 1998 with a department id of 5.
SELECT first_name, last_name, hire_date, department_id
FROM employees
WHERE hire_date
BETWEEN '1997-01-01'
AND '1998-12-3'
AND department_id = 5;

-- Filtering Data Part 02 – Exercise 3
-- Display employees who were employed in 1998, 1999, 2000. Display their first name, last name, salary, email and hire date (alias 'Year of Hire') and order by last name is ascending order.
SELECT first_name, last_name, salary, email, hire_date AS 'Year of Hire'
FROM employees
WHERE YEAR ( hire_date )
IN ( 1998, 1999, 2000 )
ORDER BY last_name;

-- Filtering Data Part 02 – Exercise 4
-- Display all details of employees that have a salary bounded between 5000 and 10000 (inclusive). 
SELECT *
FROM employees
WHERE salary >= 5000
AND salary <= 10000
ORDER BY salary DESC;

-- Filtering Data Part 02 – Exercise 5
-- Identify all employees that have salaries between 4000 and 12000. In ascending order according to first name.
SELECT first_name, last_name, salary
FROM employees
WHERE salary
BETWEEN 4000
AND 12000
ORDER BY first_name ASC;

-- Filtering Data Part 02 – Exercise 6
-- Display all the records for employees that are NOT in the following departments. They are not in 1, 4, 8, 10. So it will display all the others. Sort according to salary in descending order.
SELECT *
FROM employees
WHERE department_id NOT
IN (1, 4, 8, 10)
ORDER BY salary DESC;

-- Filtering Data Part 02 – Exercise 7
-- Display the details of the employees that have an ‘s’ at the end of their first name. Sort using ascending sort according to first name
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE '%s'
ORDER BY first_name ASC;

-- Filtering Data Part 02 – Exercise 8
-- Display the details of employees that have three letters unknown followed by a ‘g’  for their last name.
SELECT employee_id, first_name, last_name
FROM employees
WHERE last_name LIKE '___g';
