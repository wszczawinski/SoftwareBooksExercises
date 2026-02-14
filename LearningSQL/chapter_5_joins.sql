-- EX 5-1

SELECT c.first_name, c.last_name, a.address, ct.city
FROM customer c
    JOIN address a
    ON c.address_id = a.address_id
    JOIN city ct
    ON a.city_id = ct.city_id
WHERE a.district = 'California';

-- EX 5-2

SELECT f.title, a.first_name
FROM film f
    JOIN film_actor fa
    ON f.film_id = fa.film_id
    JOIN actor a
    ON a.actor_id = fa.actor_id
WHERE a.first_name = 'JOHN';

-- EX 5-3

SELECT a1.city_id, a1.address, a2.address
FROM address a1
    JOIN address a2
    ON a1.city_id = a2.city_id
WHERE a1.city_id = a2.city_id AND a1.address_id != a2.address_id;


-- Joins

SELECT c.first_name, c.last_name, a.address
FROM customer c JOIN address a
ON c.address_id = a.address_id;

SELECT c.first_name, c.last_name, a.address
FROM customer c JOIN address a
USING (address_id);


SELECT c.first_name, c.last_name, ct.city
FROM customer c
    JOIN address a
    ON c.address_id = a.address_id
    JOIN city ct
    ON a.city_id = ct.city_id;


SELECT c.first_name, c.last_name, addr.address, addr.city, addr.district
FROM customer c
    JOIN (SELECT a.address_id, a.address, ct.city, a.district
            FROM address a
                JOIN city ct
                ON a.city_id = ct.city_id
            WHERE a.district = 'California') addr
    ON c.address_id = addr.address_id;


SELECT f.title
FROM film f
    JOIN film_actor fa
    ON f.film_id = fa.film_id
    JOIN actor a
    ON fa.actor_id = a.actor_id
WHERE ((a.first_name = 'CATE' AND a.last_name = 'MCQUEEN')
    OR (a.first_name = 'CUBA' and a.last_name = 'BIRCH'));

SELECT f.title, a1.actor_id, a2.actor_id
FROM film f
    JOIN film_actor fa1
    ON f.film_id = fa1.film_id
    JOIN actor a1
    ON fa1.actor_id = a1.actor_id
    JOIN film_actor fa2
    ON f.film_id = fa2.film_id
    JOIN actor a2
    ON fa2.actor_id = a2.actor_id
WHERE ((a1.first_name = 'CATE' AND a1.last_name = 'MCQUEEN')
    AND (a2.first_name = 'CUBA' and a2.last_name = 'BIRCH'));
