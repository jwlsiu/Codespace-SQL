-- Querying Data AND Sorting Data – Exercise 1
-- Display all in the locations table
SELECT *
FROM locations;

-- Display location_id, city and country_id from the locations table
SELECT l.location_id, city, country_id
FROM locations AS l;

-- Querying Data AND Sorting Data – Exercise 2
-- Display employee_id, last_name and salary (re-name as 'Monthly Salary') from the employees table
SELECT e.employee_id, e.last_name, e.salary AS 'Monthly Salary'
FROM employees e;

-- Calculate the employees annual salary and display as 'Yearly Salary'. Monthly salary times by 12
SELECT employee_id, last_name, salary * 12 AS 'Yearly Salary'
FROM employees;

-- Calculate the employees years of service. Find the difference between today's date and hire date, divide by 365 to get number of years.
SELECT employee_id, last_name, ROUND( DATEDIFF( NOW(), hire_date) / 365, 0) AS 'Years of Service'
FROM employees;

-- Querying Data AND Sorting Data – Exercise 3
-- Display full names by joining first_name and last_name from employees table
SELECT CONCAT( first_name, ' ', last_name) AS 'Full Name'
FROM employees;

-- Select all from countries and sort by Z to A
SELECT * 
FROM countries
ORDER BY country_name DESC;

-- Display last_name, first_name and phone_number from employees table. Sort by ascending order last_name first, then first_name.
SELECT last_name, first_name, phone_number
FROM employees
ORDER BY last_name, first_name;

-- Querying Data AND Sorting Data – Exercise 4
-- Display last_name, email, salary from employees table. Sort by salary highest to lowest. If same salary, further sort by last_name in asecending order.
SELECT last_name, email, salary
FROM employees
ORDER BY salary DESC, last_name ASC;
