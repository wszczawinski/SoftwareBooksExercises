-- EX 4-1

SELECT payment_id, customer_id, amount, date(payment_date)
FROM payment
WHERE customer_id != 5 AND (amount > 8 OR date(payment_date) = '2005-08-23');

-- EX 4-2

SELECT payment_id, customer_id, amount, date(payment_date)
FROM payment
WHERE customer_id != 5 AND NOT (amount > 6 OR date(payment_date) = '2005-06-19');

-- EX 4-3

SELECT payment_id, customer_id, amount, date(payment_date)
FROM payment
WHERE amount NOT IN (1.98, 7.98, 9.98);

-- EX 4-4

SELECT last_name, first_name
FROM customer
WHERE last_name LIKE '_A%W%';

-- Filtering

-- String Ranges

SELECT last_name, first_name
FROM customer
WHERE last_name BETWEEN 'FA' AND 'FRB'
ORDER BY last_name;

-- Membership Conditions

SELECT title, rating
FROM film
WHERE rating IN ('G', 'PG');


SELECT title, rating
FROM film
WHERE rating IN (SELECT rating FROM film WHERE title LIKE '%PET%');


SELECT title, rating
FROM film
WHERE rating NOT IN ('R', 'NC-17');

-- Matching Conditions

SELECT last_name, first_name
FROM customer
WHERE left(last_name, 1) = 'Q';


SELECT last_name, first_name
FROM customer
WHERE last_name LIKE '_A_T%S';


SELECT last_name, first_name
FROM customer
WHERE last_name LIKE 'Q%' OR last_name LIKE 'Y%';

SELECT last_name, first_name
FROM customer
WHERE last_name REGEXP '^[QY]';

-- Null
-- an expression can be null, but it cant equal null
-- two nulls are never equal to each other

SELECT rental_id, customer_id, return_date
FROM rental
WHERE return_date IS NULL;

SELECT rental_id, customer_id, return_date
FROM rental
WHERE return_date IS NOT NULL;



