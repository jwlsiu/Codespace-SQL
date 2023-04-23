-- Filtering Data Part 01 – Exercise 1
-- Apply distinct command to find list of department_ids from employees table. To show no duplication.
SELECT DISTINCT department_id
FROM employees;

-- Filtering Data Part 01 – Exercise 2
-- Find the top salary in the company using the employees table.
SELECT employee_id, first_name, last_name, job_id
FROM employees
ORDER BY salary DESC
LIMIT 1;

-- Filtering Data Part 01 – Exercise 3
-- List department names and id's from department table. Start with the 5th department and ending with the 10th department.
SELECT department_id, department_name
FROM departments
LIMIT 4, 6;

-- Filtering Data Part 01 – Exercise 4
-- Show the company's unique location id's from the location table.
SELECT DISTINCT location_id
FROM departments;

-- Filtering Data Part 01 – Exercise 5
-- Display the first_name, lasty_name, salary and phone number of the employees earning under or equal to 5000. Sort by salary descending.
SELECT first_name, last_name, salary, phone_number
FROM employees
WHERE salary <= 5000
ORDER BY salary DESC;

-- Filtering Data Part 01 – Exercise 6
-- Display employee_id, first_name, last_name, hire date of the employees hired after the befinning of 1999.
SELECT employee_id, first_name, last_name, hire_date
FROM employees
WHERE YEAR( hire_date ) >= 1999
ORDER BY hire_date;
