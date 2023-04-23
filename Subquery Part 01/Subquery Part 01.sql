-- Subquery Part 01 – Exercise 1
-- Identify the person at the low end of the salary scale – using a subquery to identify the amount they receive. Then use this amount to work out their employee details.
SELECT employee_id, first_name, last_name, MIN(salary)
FROM employees
WHERE salary = (
SELECT MIN(salary)
FROM employees);

-- Subquery Part 01 – Exercise 2
-- Write the sql code to determine the employees (employee_id, first_name, last_name, salary) for those earning above the average salary.
SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > (
SELECT AVG(salary)
FROM employees);

-- Subquery Part 01 – Exercise 3
-- Determine the people earning below the average inside of department_id = 6. Then show their details (employee_id, first_name, last_name, salary, department_id).
SELECT employee_id, first_name, last_name, salary, department_id
FROM employees
WHERE salary < (
SELECT AVG(salary)
FROM employees 
WHERE department_id = 6)
ORDER BY salary;

-- Subquery Part 01 – Exercise 4
-- Determine the employees working in the IT department for the company.
SELECT employee_id, first_name, last_name, e.department_id, department_name
FROM employees e, departments d
WHERE e.department_id
IN (
SELECT d.department_id
FROM departments
WHERE d.department_name = 'IT'
);

-- Subquery Part 01 – Exercise 5
-- Starting with 'Jennifer King' determine the employees name i.e. the father to this child. Who is it?
SELECT dependent_id, CONCAT(d.first_name, ' ', d.last_name) 'Dependent name', CONCAT(e.first_name, ' ', e.last_name)'Employee name', relationship AS 'Dependent relationship to employee'
FROM dependents d
INNER JOIN employees e ON d.employee_id = e.employee_id
ORDER BY dependent_id
LIMIT 3, 40;
