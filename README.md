# Codespace-SQL
### 1. Introduction to SQL: [introductionToSQL.sql](/introductionToSQL.sql) ### 
Using the database called ‘medical’ apply the following sql commands, and obtain the below. Use of the SELECT statement with the WILDCARD (*) to nominate all the attributes in the table, and FROM statement SQL Select * From tblappointment; 
* **Activity 1:** Complete the SQL and copy the SQL following by screenshots of the output.
* **Activity 2:** Do the same as the above, this time using the other three tables provided, choose any three attributes and then display these in the output. Show the SQL code and screenshot the output (as usual). Use of the DISTINCT command after the SELECT statement. Applying the DISTINCT command across the primary key doesn’t have any purpose, since all the records would naturally expected to appear. Since the primary key by its very definition is that the values need to be unique. e.g. SELECT DISTINCT PatientID FROM tblpatient; A more purposeful application of DISTINCT would be showing the counties that the patients come from. 
* **Activity 3:** Apply the DISTINCT command to identify the counties that the patients come from using the patients table. This would give an understanding of the geographic spread.
* **Activity 4:** Also apply the DISTINCT on the title attribute, which would suggest to us, what age groups the patients are being drawn from.
