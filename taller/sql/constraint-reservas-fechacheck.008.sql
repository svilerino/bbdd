ALTER TABLE reservas ADD CONSTRAINT fechaValida CHECK(f_reserva <= f_alquiler);

INSERT INTO reservas VALUES (100, 3, "2006-12-31", "2006-01-01");

