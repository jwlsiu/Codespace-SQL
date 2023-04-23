-- Grouping Data – Exercise 1
-- Create a group by operation on job_id that will show the number of counts that each job_id corresponds to.
SELECT job_id, COUNT(job_id)
FROM employees
GROUP BY job_id;

-- Grouping Data – Exercise 2
-- Then do a where operation on the same series, that will display the output from job_id = 9.
SELECT job_id, COUNT(job_id)
FROM employees
WHERE job_id = 9;

SELECT job_id, COUNT(job_id)
FROM employees
GROUP BY job_id
HAVING job_id = 9;

-- Grouping Data – Exercise 3
-- Determine the job titles alongside of the job_ids for the original query.
SELECT e.job_id 'Job ID', job_title 'Job Title', COUNT( e.job_id) 'Number of staff'
FROM employees e
INNER JOIN jobs j ON e.job_id = j.job_id
GROUP BY e.job_id;
