CREATE TABLE marinos(
	sid int,
	snombre varchar(20),
	calificacion int,
	edad int
);

CREATE TABLE botes(
	bid int,
	color varchar(10)
);

CREATE TABLE reservas(
	sid int,
	bid int,
	f_reserva timestamp,
	f_alquiler timestamp
);