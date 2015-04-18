#6.1.1 Recuperar el nombre de los marinos mayores de 21 y puntaje mayor que 8.
SELECT snombre FROM marinos m WHERE m.edad > 21 AND m.calificacion > 8;

#6.1.2 Recuperar los BIDs de los botes rojos.
SELECT bid FROM botes b WHERE b.color = "Rojo";

#6.1.3 Recuperar los nombres y edad de los marinos cuyo nombre comienza con ‘J’
SELECT snombre, edad FROM marinos m WHERE m.snombre LIKE "J%";

#6.1.3 Por un error en el aplicativo que ingresa las reservas, algunas reservas se cargaron en la base
#sin especificar la fecha de la reserva (NULL). Recuperar esas reservas.
SELECT * FROM reservas WHERE f_reserva IS NULL;

#6.1.4 Recuperar el nombre de los marinos que efectuaron reservas durante el año 2009
#en 2009 da vacio
#SELECT DISTINCT m.snombre FROM reservas r INNER JOIN marinos m ON r.sid = m.sid WHERE YEAR(r.f_reserva) = 2009;  
SELECT DISTINCT m.snombre FROM reservas r INNER JOIN marinos m ON r.sid = m.sid 
WHERE YEAR(r.f_reserva) = 2006;  

#6.2 Recuperar los nombres de los marineros junto con los ID de los botes que reservaron.
SELECT m.snombre, r.bid FROM reservas r INNER JOIN marinos m ON r.sid = m.sid

#6.3 Recuperar los nombres de los marineros y los nombres de los botes que reservaron. Si un
#marinero no reservo ningún bote también debe aparecer en el listado.
#botes no tienen nombre ! uso id y color instead para hacer el join igual
SELECT m.snombre, b.bid, b.color FROM reservas r 
INNER JOIN botes b ON b.bid = r.bid
RIGHT JOIN marinos m ON m.sid = r.sid;

#6.4.1 Obtener las fechas en que se alquilaron botes rojos.
SELECT r.f_alquiler FROM reservas r INNER JOIN botes b ON r.bid = b.bid WHERE b.color="Rojo";

#6.4.2 Modificar las calificaciones de los marineros que tienen 30 o más años subiéndoles un punto.
UPDATE marinos m SET m.calificacion = (m.calificacion + 1) WHERE m.edad > 30;

#6.4.3 Modificar las reservas del punto 6.1.3. Setear la fecha de reserva un día antes de la de alquiler.
UPDATE reservas SET f_reserva = (f_alquiler - INTERVAL 1 DAY);

#6.5 Indicar para cada marinero cuantos botes reservó
SELECT m.snombre, COUNT(r.f_alquiler) AS cantidad_reservas FROM reservas r 
RIGHT JOIN marinos m ON r.sid = m.sid GROUP BY r.sid;

#6.6 Recuperar el nombre de los marineros que reservaron más de 3 botes
#con >3 da vacio la query.
SELECT m.snombre, COUNT(r.f_alquiler) AS cantidad_reservas FROM reservas r 
RIGHT JOIN marinos m ON r.sid = m.sid 
GROUP BY r.sid
HAVING cantidad_reservas >= 3;

#6.5 Recuperar el nombre de los marineros que no alquilaron ningún bote. Resolver este ejercicio de
#3 formas diferentes

#Forma 1
SELECT m.snombre, COUNT(r.f_alquiler) AS cantidad_reservas FROM reservas r 
RIGHT JOIN marinos m ON r.sid = m.sid 
GROUP BY r.sid
HAVING cantidad_reservas = 0;

#Forma 2
SELECT m.snombre FROM marinos m WHERE m.sid NOT IN(SELECT r.sid FROM reservas r);

#Forma 3
nose

#6.6 Recuperar el nombre del marinero de mayor puntaje
SELECT m.snombre, m.calificacion FROM marinos m WHERE m.calificacion = (SELECT MAX(m.calificacion) FROM marinos m);

#6.7 Recuperar el nombre de los marineros que alquilaron todos los botes
SELECT m.snombre FROM marinos m WHERE NOT EXISTS
(SELECT b.bid FROM botes b WHERE NOT EXISTS
	(SELECT * FROM reservas r WHERE r.sid = m.sid AND r.bid=b.bid));

probar con un count DISTINCT entre la cantidad de botes de todos los marinos y la cantidad total de botes

#6.8 Recuperar el nombre del ( o los ) marineros que alquilaron mas botes.