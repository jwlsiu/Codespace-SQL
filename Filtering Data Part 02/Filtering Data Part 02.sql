-- Joins – Exercise 1
-- Create an sql that will display the following fields (attributes) – first name, last name, manager_id, department_id, location_id. Using an EQUI join display the data with an appropriate query.
SELECT first_name, last_name, manager_id, e.department_id, d.location_id
FROM employees AS e
INNER JOIN departments AS d ON e.department_id = d.department_id
INNER JOIN locations AS l ON l.location_id = d.location_id;

-- Joins – Exercise 2
-- Create an sql that will display the following fields (attributes) – location_id, postal_code, country_id, country_name – apply a series of alias’ to the relevant tables. Then generate the output according to an INNER JOIN. With the primary key ‘location_id’ deciding what will be the prevalent table in the query.
SELECT location_id, postal_code, c.country_id, country_name
FROM locations l
INNER JOIN countries c ON c.country_id = l.country_id;


-- Joins – Exercise 3
--  Create a query that will generate the following information, employee_id, first_name, last_name, dependent_id, first_name, last_name, relationship. This will draw information from the employees and dependents tables.
SELECT e.employee_id, e.first_name, e.last_name, dependent_id, d.first_name, d.last_name, d.relationship
FROM employees e
INNER JOIN dependents d ON e.employee_id = d.employee_id;
