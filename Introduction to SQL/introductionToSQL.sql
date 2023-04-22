-- Introduction to SQL - Exercise 1
SELECT * 
FROM tblappointment;
-- 86 rows returned

-- Introduction to SQL - Exercise 2
SELECT firstname, lastname, homephone 
FROM tbldoctors;

SELECT title, gender, dob 
FROM tblpatient;

SELECT address1, postcode, salary 
FROM tblreceptionist;

-- Introduction to SQL - Exercise 3
SELECT DISTINCT county
FROM tblpatient;

-- Introduction to SQL - Exercise 4
SELECT DISTINCT title
FROM tblpatient;
