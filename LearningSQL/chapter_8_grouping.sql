-- EX 8-1

SELECT COUNT(*) FROM payment;

-- EX 8-2

SELECT customer_id, count(*)
FROM payment
GROUP BY customer_id;

-- EX 8-3

SELECT customer_id, count(*)
FROM payment
GROUP BY customer_id
HAVING count(*) > 40;


-- Grouping and Aggregates

SELECT customer_id, count(*)
FROM rental
WHERE EXTRACT(YEAR FROM rental.rental_date) = 2005
GROUP BY customer_id
HAVING count(*) >= 40
ORDER BY 2 DESC;

-- implicit group - all rows in the table
SELECT MAX(amount) max_amt,
    MIN(amount) min_amt,
    AVG(amount) avg_amt,
    SUM(amount) tot_amt,
    COUNT(*) num_payments
FROM payment;

-- explicit group
SELECT customer_id,
    MAX(amount) max_amt,
    MIN(amount) min_amt,
    AVG(amount) avg_amt,
    SUM(amount) tot_amt,
    COUNT(*) num_payments
FROM payment
GROUP BY customer_id;

-- counting distinct values
SELECT COUNT(customer_id) num_rows,
       COUNT(DISTINCT customer_id) num_customers
FROM payment;

-- using expressions
SELECT MAX(datediff(return_date, rental_date))
FROM rental;

-- single-column grouping
SELECT actor_id, count(*)
FROM film_actor
GROUP BY actor_id;

-- multiple-column grouping
SELECT fa.actor_id, f.rating, count(*)
FROM film_actor fa
    INNER JOIN film f
    ON fa.film_id = f.film_id
GROUP BY fa.actor_id, f.rating
ORDER BY  1,2;

-- grouping via expressions
SELECT extract(YEAR FROM rental_date) year,
    COUNT(*) how_many
FROM rental
GROUP BY extract(YEAR FROM rental_date);

-- grouping rollups
SELECT fa.actor_id, f.rating, count(*)
FROM film_actor fa
         INNER JOIN film f
        ON fa.film_id = f.film_id
GROUP BY fa.actor_id, f.rating WITH ROLLUP
ORDER BY  1,2;

-- group filter conditions
SELECT fa.actor_id, f.rating, count(*)
FROM film_actor fa
        INNER JOIN film f
        ON fa.film_id = f.film_id
WHERE f.rating IN ('G', 'PG')
GROUP BY fa.actor_id, f.rating
HAVING count(*) > 10;
