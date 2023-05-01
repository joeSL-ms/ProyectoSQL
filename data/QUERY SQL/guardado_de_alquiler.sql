INSERT INTO rent (inventory_id, customer_id, staff_id) 
SELECT invent.inventory_id, 'IDDelCliente', 'IDDelVendedor'
FROM invent
JOIN film ON invent.film_id = film.film_id
WHERE film.film_id = 'IDDeLaPelicula';