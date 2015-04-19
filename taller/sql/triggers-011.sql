CREATE TABLE reservas_historico(
	sid int,
	bid int,
	f_reserva timestamp,
	f_alquiler timestamp
);
ALTER TABLE reservas_historico MODIFY f_alquiler timestamp NOT NULL;
ALTER TABLE reservas_historico ADD PRIMARY KEY(f_alquiler);
ALTER TABLE reservas_historico ADD FOREIGN KEY (sid) REFERENCES marinos(sid);
ALTER TABLE reservas_historico ADD FOREIGN KEY (bid) REFERENCES botes(bid);

CREATE TRIGGER reserva_a_historico BEFORE DELETE ON reservas
	FOR EACH ROW 
		INSERT INTO reservas_historico VALUES(OLD.sid, OLD.bid, OLD.f_reserva, OLD.f_alquiler);