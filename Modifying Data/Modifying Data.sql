-- Modifying Data – Exercise 1
-- Create a table called ‘module’ that has the following attributes – moduleno, modulename, moduleunitsize, hoursfordelivery.

-- Modifying Data – Exercise 2
/*Enter the records for the other members of the Flintstone family: Wilma, Pebbles and Dino.
'EC007','Flintstone','Fred', 'flintstone@bt.com', 1234567
'EC008','Flintstone','Wilma', 'w.flintstone@bt.com', 2345678
'EC009','Flintstone','Dino', 'd.flintstone@bt.com', 3456789
*/
SELECT *
FROM students;

-- Modifying Data – Exercise 3
/* Insert into this table the following record:
moduleno: DH3J34
modulename: SQL: Introduction
moduleunitsize: 1
hoursfordelivery: 32
studentno: EC007
*/
SELECT *
FROM module;

-- Modifying Data – Exercise 4
-- Use code to alter the value from Fred to Barney
UPDATE students 
SET firstname = 'Fred' 
WHERE studentno = 'EC007';

SELECT *
FROM students;

-- Modifying Data – Exercise 5
-- Do sql that will show Fred and the module details, using a join.
SELECT surname, firstname, s.studentno, m.modulename
FROM students s
INNER JOIN module m ON s.studentno = m.studentno;
