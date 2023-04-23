-- Aggregate Functions – Exercise 1
-- Determine the number of employees in the Sales department. Also create a proper header that shows the information appropriately.
SELECT d.department_name 'Department Name', COUNT(e.department_id) 'Headcount'
FROM employees e, departments d
WHERE e.department_id = 8
AND d.department_id = 8;

-- Aggregate Functions – Exercise 2
-- Determine the number of employing working in each of the respective departments.
SELECT d.department_name 'Department Name', COUNT(e.department_id) 'Headcount'
FROM employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Aggregate Functions – Exercise 3
-- Determine the number of employees each manager will manage from the employees table.
SELECT m.manager_id AS 'Manager ID', CONCAT( e.first_name, ' ' , e.last_name ) AS 'Manager Name', COUNT(m.manager_id) AS 'Number of Employees Managed'
FROM employees m
INNER JOIN employees e ON e.employee_id = m.manager_id
GROUP BY m.manager_id;

-- Aggregate Functions – Exercise 4
-- Determine who (if anyone) has two children from the dependents table.
SELECT e.employee_id AS 'Employee ID', CONCAT (e.first_name, ' ', e.last_name ) AS 'Employee Name', COUNT(d.employee_id) AS 'Number of Dependents'
FROM employees e
INNER JOIN  dependents d ON e.employee_id = d.employee_id
GROUP BY d.employee_id 
HAVING COUNT(d.employee_id) = 2;
-- No employees with two children from the dependents table

-- Aggregate Functions – Exercise 5
-- Determine the amount of salary per department. Give a breakdown using only the department_id’s in the output along with the salary amounts.
SELECT d.department_id AS 'Department ID', SUM(e.salary) AS 'Total Salary'
FROM departments d
INNER JOIN employees e ON e.department_id = d.department_id
GROUP BY d.department_id;

-- Aggregate Functions – Exercise 6
-- Determine the average of the max salary inside of the jobs table. Round to two decimal places.
SELECT ROUND(AVG( max_salary ), 2) AS 'Average of max salary'
FROM jobs;
