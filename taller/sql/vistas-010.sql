#7.1 Se desea contar con una vista que permita obtener: los botes disponibles para todas las fechas
#que tienen al menos una reserva. Crear la vista mediante la siguiente instrucción:

CREATE VIEW sin_reservar AS
SELECT r.f_alquiler, b.bid
FROM reservas r, botes b
WHERE b.bid NOT IN ( 
					SELECT bid FROM reservas r2
					WHERE r2.f_alquiler = r2.f_alquiler
				   );

SELECT vsr.f_alquiler, b.bid, b.color FROM sin_reservar vsr INNER JOIN botes b ON vsr.bid = b.bid
WHERE b.color = "Verde" AND f_alquiler="2006-08-04";