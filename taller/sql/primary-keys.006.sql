#ALTER TABLE marinos ALTER COLUMN sid int NOT NULL;
#ALTER TABLE botes ALTER COLUMN bid int NOT NULL;
#ALTER TABLE reserva
#Esta version de mysql usa alter table modify
ALTER TABLE marinos MODIFY sid int NOT NULL;
ALTER TABLE botes MODIFY bid int NOT NULL;
ALTER TABLE reservas MODIFY f_alquiler timestamp NOT NULL;

#Fix de unicidad para botes
UPDATE botes SET bid = 5 WHERE bid = 3 AND color = "verde" limit 1;


ALTER TABLE marinos ADD PRIMARY KEY(sid);
ALTER TABLE botes ADD PRIMARY KEY(bid);
ALTER TABLE reservas ADD PRIMARY KEY(f_alquiler);


alquiler no funco. hay repetidos en f_alquiler.