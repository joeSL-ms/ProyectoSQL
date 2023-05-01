SELECT 
max(sub.film_title),
max(sub.film_description), 
lang.name
FROM (
  SELECT 
  act.first_name, 
  act.last_name, 
  film.title AS film_title, 
  film.description AS film_description, 
  invent.inventory_id, 
  cat.name AS category, 
  film.language_id
  FROM connect
  JOIN act ON connect.actor_id=act.actor_id
  JOIN film ON connect.film_id=film.film_id
  JOIN invent ON film.film_id=invent.film_id
  JOIN cat ON connect.category_id=cat.category_id
) AS sub
JOIN lang ON sub.language_id=lang.language_id
WHERE sub.film_title='ALIEN CENTER'
group by sub.film_title,lang.name
