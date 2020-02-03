-- This is a simple INNER JOIN query that has been done for you.

CREATE OR REPLACE VIEW query_0 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per, payroll pay 
WHERE per.empid = pay.empid AND pay.salary = 189170;

-- Change the SQL queries below to your answers to the respective questions.

CREATE OR REPLACE VIEW query_1 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per, payroll pay 
WHERE per.empid = pay.empid AND pay.salary = 189170;

CREATE OR REPLACE VIEW query_2 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per, payroll pay 
WHERE per.empid = pay.empid AND pay.salary = 189170;

CREATE OR REPLACE VIEW query_3 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per, payroll pay 
WHERE per.empid = pay.empid AND pay.salary = 189170;

CREATE OR REPLACE VIEW query_4 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per, payroll pay 
WHERE per.empid = pay.empid AND pay.salary = 189170;

CREATE OR REPLACE VIEW query_5 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per, payroll pay 
WHERE per.empid = pay.empid AND pay.salary = 189170;

CREATE OR REPLACE VIEW query_slowest (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per, payroll pay 
WHERE per.empid = pay.empid AND pay.salary = 189170;

-- Indicate the measured time for 1000 executions for each of the queries (replace <time> by the average execution time reported by the Web page)
-- query_0  <time> ms
-- query_1  <time> ms
-- query_2  <time> ms
-- query_3  <time> ms
-- query_4  <time> ms
-- query_5  <time> ms
-- query_slowest  <time> ms



