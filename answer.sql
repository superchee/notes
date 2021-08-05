-- This is a simple INNER JOIN query that has been done for you.

CREATE OR REPLACE VIEW query_0 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per, payroll pay 
WHERE per.empid = pay.empid AND pay.salary = 189170;

-- Change the SQL queries below to your answers to the respective questions.

CREATE OR REPLACE VIEW query_1 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per FULL OUTER JOIN payroll pay ON per.empid = pay.empid AND pay.salary = 189170 
WHERE per.empid IS NOT NULL AND pay.empid IS NOT NULL;

CREATE OR REPLACE VIEW query_2 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per
WHERE EXISTS(
    SELECT *
    FROM payroll pay 
    WHERE per.empid = pay.empid
    AND pay.salary = 189170
);

CREATE OR REPLACE VIEW query_3 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per
WHERE per.empid IN (
    SELECT pay.empid
    FROM payroll pay
    WHERE pay.salary = 189170 
);

CREATE OR REPLACE VIEW query_4 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per, (
    SELECT pay.empid
    FROM payroll pay
    WHERE pay.salary = 189170) AS pay1  
WHERE per.empid = pay1.empid;

CREATE OR REPLACE VIEW query_5 (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per 
WHERE NOT EXISTS(
    SELECT *
    FROM payroll pay
    WHERE NOT EXISTS(
        SELECT *
        FROM payroll pay
        WHERE per.empid = pay.empid
        AND pay.salary = 189170
    )
);


CREATE OR REPLACE VIEW query_slowest (empid, lname) AS 
SELECT per.empid, per.lname 
FROM employee per FULL OUTER JOIN payroll pay ON per.empid = pay.empid
WHERE NOT EXISTS(
    SELECT *
    FROM payroll pay
    WHERE NOT EXISTS(
        SELECT *
        FROM payroll pay
        WHERE per.empid = pay.empid
		AND pay.salary = 189170
    )
) AND per.empid IS NOT NULL AND pay.empid IS NOT NULL;




-- Indicate the measured time for 100 executions for each of the queries (replace <time> by the average execution time reported by the Web page)
-- query_0  <5.17> ms
-- query_1  <6.95> ms
-- query_2  <4.72> ms
-- query_3  <6.28> ms
-- query_4  <4.86> ms
-- query_5  <70.71> ms
-- query_slowest  <109.75> ms


test



