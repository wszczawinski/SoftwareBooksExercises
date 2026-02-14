-- EX 6-3

SELECT 'CUST' type, c.first_name, c.last_name
FROM customer c
WHERE c.first_name LIKE 'L%'
UNION
SELECT 'ACTR' type, a.first_name, a.last_name
FROM actor a
WHERE a.first_name LIKE 'L%'
ORDER BY last_name;


-- Sets

SELECT 'CUST' type, c.first_name, c.last_name
FROM customer c
WHERE c.first_name LIKE 'J%' and c.last_name LIKE 'D%'
UNION ALL
SELECT 'ACTR' type, a.first_name, a.last_name
FROM actor a
WHERE a.first_name LIKE 'J%' and a.last_name LIKE 'D%';

SELECT 'CUST' type, c.first_name, c.last_name
FROM customer c
WHERE c.first_name LIKE 'J%' and c.last_name LIKE 'D%'
UNION
SELECT 'ACTR' type, a.first_name, a.last_name
FROM actor a
WHERE a.first_name LIKE 'J%' and a.last_name LIKE 'D%';


SELECT 'CUST' type, c.first_name fname, c.last_name lname
FROM customer c
WHERE c.first_name LIKE 'J%' and c.last_name LIKE 'D%'
UNION ALL
SELECT 'ACTR' type, a.first_name, a.last_name
FROM actor a
WHERE a.first_name LIKE 'J%' and a.last_name LIKE 'D%'
-- have to be columns of first query in compound
ORDER BY fname, lname;
