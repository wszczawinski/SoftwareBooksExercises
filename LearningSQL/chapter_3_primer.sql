-- EX 3-1
SELECT a.actor_id, a.first_name, a.last_name
FROM actor a
ORDER BY a.last_name, a.first_name;

-- EX 3-2
SELECT a.actor_id, a.first_name, a.last_name
FROM actor a
WHERE a.last_name = 'WILLIAMS' OR a.last_name = 'DAVIS';

-- EX 3-3
SELECT DISTINCT r.customer_id
FROM rental r
WHERE date(r.rental_date) = '2005-07-05';

-- EX 3-4
SELECT c.email, r.return_date
FROM customer c
    INNER JOIN rental r
    ON c.customer_id = r.customer_id
WHERE date(r.rental_date) = '2005-06-14'
ORDER BY r.return_date, c.email;

-- Primer

SELECT language_id, name, last_update
FROM language;


SELECT language_id,
    'COMMON' lnguage_usage,
    language_id * 3.1415 lang_pi_value,
    upper(name) language_name
FROM language;


SELECT DISTINCT actor_id FROM film_actor ORDER  BY actor_id;


SELECT concat(cust.last_name, ', ', cust.first_name) full_name
FROM (SELECT first_name, last_name, email
    FROM customer
    WHERE first_name = 'JESSIE'
) cust;

--NOTE: TEMPORARY TABLE - will dissapear after session is closed

CREATE TEMPORARY TABLE actor_j
(actor_id smallint(5),
    first_name varchar(45),
    last_name varchar(45));

INSERT INTO actor_j
    SELECT actor_id, first_name, last_name
    FROM actor
    WHERE last_name LIKE 'J%';

SELECT * FROM actor_j;


SELECT c.last_name, c.first_name,
    time(r.rental_date) retal_time
FROM customer c
    INNER JOIN rental r
    ON c.customer_id = r.customer_id
WHERE date(r.rental_date) = '2005-06-14'
ORDER BY c.last_name, c.first_name;
