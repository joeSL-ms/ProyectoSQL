SELECT 
act.first_name, 
act.last_name, 
AVG(rental_rate) AS average_rental
FROM connect 
JOIN act ON connect.actor_id = act.actor_id 
JOIN film ON connect.film_id = film.film_id 
JOIN invent ON film.film_id = invent.film_id 
GROUP BY act.first_name, act.last_name