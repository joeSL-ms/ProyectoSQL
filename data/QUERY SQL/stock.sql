SELECT 
film.title, 
COUNT(DISTINCT invent.inventory_id) as inventory_count
FROM film
JOIN invent ON film.film_id = invent.film_id
GROUP BY film.title;