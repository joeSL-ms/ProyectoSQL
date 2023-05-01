SELECT 
act.first_name,
act.last_name,
film.title,
count(invent.inventory_id) AS cantidad,
cat.name AS category
FROM connect
JOIN act ON connect.actor_id=act.actor_id
JOIN film ON connect.film_id=film.film_id
JOIN invent ON film.film_id=invent.film_id
JOIN cat ON connect.category_id=cat.category_id
WHERE act.first_name= 'nombre' OR act.last_name='apellido' OR cat.name='horror'
group by act.first_name,act.last_name,film.title,category

