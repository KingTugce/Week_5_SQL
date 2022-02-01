-- 1. How many actors are there with the last name ‘Wahlberg’?
-- Answer: -- Nick Wahlberg, Daryl Wahlberg
SELECT last_name, first_name
FROM actor
WHERE  last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99?
-- Answer: 5607
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- 3. What film does the store have the most of? (search in inventory)
-- ANSWER: 8 

-- l am kinda lost on this one @_@
SELECT film_id, COUNT(inventory) AS most_store
FROM inventory
GROUP BY film_id
ORDER BY film_id DESC;

-- 4. How many customers have the last name ‘William’?
-- Answer: 2,Williams and Williamson 
SELECT last_name
FROM customer
WHERE last_name LIKE 'William%';

-- 5. What store employee (get the id) sold the most rentals?
-- Answer: staff_id = 2, count = 7304
SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id
ORDER BY staff_id DESC;

--6. How many different district names are there?
-- Answer: 109
SELECT COUNT(DISTINCT country)
FROM country;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: 
	-- How should l print the name of the movie
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY film_id DESC;

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 21

SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es';

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? 
-- (use group by and having > 250)
-- Answer: 3
SELECT COUNT(amount) AS payment_amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;

-- 10. Within the film table, 
-- how many rating categories are there? Answer: 5
-- And what rating has the most movies total? Answer: 223
SELECT COUNT(rating)
FROM film
GROUP BY rating
ORDER BY rating DESC;











