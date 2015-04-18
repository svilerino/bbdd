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

#alquiler no funco. hay repetidos en f_alquiler.
#tenemos que desambiguar esos valores.

#fix para reservas
UPDATE reservas SET f_alquiler = "2006-09-01 00:00:00" WHERE sid = 100 and bid = 1 LIMIT 1;
UPDATE reservas SET f_alquiler = "2006-09-02 00:00:00" WHERE sid = 101 and bid = 2 LIMIT 1;
UPDATE reservas SET f_alquiler = "2006-09-03 00:00:00" WHERE sid = 102 and bid = 1 LIMIT 1;
UPDATE reservas SET f_alquiler = "2006-09-04 00:00:00" WHERE sid = 101 and bid = 4 LIMIT 1;

#ADD PK to reservas
ALTER TABLE reservas ADD PRIMARY KEY(f_alquiler);

