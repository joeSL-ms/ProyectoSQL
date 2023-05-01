SELECT 
act.first_name,
act.last_name,
film.title,
cat.name AS category
FROM connect
JOIN act ON connect.actor_id=act.actor_id
JOIN film ON connect.film_id=film.film_id
JOIN cat ON connect.category_id=cat.category_id
WHERE act.first_name = 'NICK' OR cat.name = '';