ALTER TABLE reservas ADD FOREIGN KEY (sid) REFERENCES marinos(sid);
ALTER TABLE reservas ADD FOREIGN KEY (bid) REFERENCES botes(bid);

#Insert ok
INSERT INTO reservas VALUES(101, 1, "2006-08-03", "2010-08-01");
#Insert erroneo
#ids que referencian fks erroneos
INSERT INTO reservas VALUES(9999, 9999, "2006-08-03", "2010-11-11");
#Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails 
#(`taller_bbdd`.`reservas`, CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `marinos` (`sid`))

