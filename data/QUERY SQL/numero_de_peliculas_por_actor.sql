SELECT
act.first_name,
count(title) as titles
FROM connect
JOIN film ON connect.film_id = film.film_id
JOIN act ON connect.actor_id=act.actor_id
GROUP BY act.actor_id;