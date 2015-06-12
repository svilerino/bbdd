INSERT INTO Ciudadano VALUES
(1,'CIUDADANO','UNO'),
(2,'CIUDADANO','DOS'),
(3,'CIUDADANO','TRES'),
(4,'CIUDADANO','CUATRO'),
(5,'CIUDADANO','CINCO'),
(6,'CIUDADANO','SEIS'),
(7,'CIUDADANO','SIETE'),
(8,'CIUDADANO','OCHO'),
(9,'CIUDADANO','NUEVE'),
(10,'CIUDADANO','DIEZ'),
(11,'CIUDADANO','ONCE'),
(12,'CIUDADANO','DOCE'),
(13,'CIUDADANO','TRECE'),
(14,'CIUDADANO','CATORCE'),
(15,'CIUDADANO','QUINCE'),
(16,'PRESIDENTEMESA','UNO'),
(17,'PRESIDENTEMESA','DOS'),
(18,'VICEPRESIDENTEMESA','UNO'),
(19,'VICEPRESIDENTEMESA','DOS'),
(20,'TECNICO','UNO'),
(21,'TECNICO','DOS'),
(22,'CANDIDATO','UNO'),
(23,'CANDIDATO','DOS'),
(24,'CANDIDATO','TRES'),
(25,'CANDIDATO','CUATRO'),
(26,'CONDUCTOR','UNO'),
(27,'CONDUCTOR','DOS');

INSERT INTO Centro VALUES
(1,'ESCUELA','UNO'),
(2,'ESCUELA','DOS');

INSERT INTO Camion VALUES
(1,26),
(2,27);

INSERT INTO Camion_Centro VALUES
(1,1),
(2,2);

INSERT INTO Maquina VALUES
(1,20),
(2,21);

INSERT INTO Candidato VALUES
(22), (23), (24), (25);

INSERT INTO Provincia VALUES
(1,'BUENOS AIRES');
-----------------------------------------------------------------------------------
INSERT INTO Eleccion VALUES
(1,GETDATE(),'Cargo Federal');

INSERT INTO Mesa VALUES
(1,1,16,18,1,1,1);

INSERT INTO Mesa VALUES
(2,2,17,19,2,2,2);

INSERT INTO Partido_Politico VALUES
(1,'PARTIDO DE IZQUIERDA'),
(2,'PARTIDO DE DERECHA');

INSERT INTO Postulaciones VALUES
(1,22,1),
(1,23,2),
(2,24,1),
(2,25,2);

INSERT INTO Padron VALUES
(1,1,NULL),
(2,1,NULL),
(3,1,NULL),
(4,1,NULL),
(5,1,NULL),
(6,1,NULL),
(7,1,NULL),
(8,1,NULL),
(9,1,NULL),
(10,1,NULL),
(11,1,NULL),
(12,1,NULL),
(13,1,NULL),
(14,1,NULL),
(15,1,NULL),
(1,2,NULL),
(2,2,NULL),
(3,2,NULL),
(4,2,NULL),
(5,2,NULL),
(6,2,NULL),
(7,2,NULL),
(8,2,NULL),
(9,2,NULL),
(10,2,NULL),
(11,2,NULL),
(12,2,NULL),
(13,2,NULL),
(14,2,NULL),
(15,2,NULL);
----query 1
SELECT * FROM dbo.[Ganadores_Elecciones_Cargo_Ultimo_Anio]
----query 2
WITH TOPFIVE AS (
	    SELECT cen.Nombre_Establecimiento, (ciu.Nombre + ciu.Apellido) as Votante, p.selloVoto as HoraVoto,
	    ROW_NUMBER() over (
	        PARTITION BY cen.idCentro
	        ORDER BY p.selloVoto DESC
	    ) AS NumFila
	    FROM Padron p
	    INNER JOIN Mesa m ON m.idMesa = p.idMesa
	    INNER JOIN Centro cen ON cen.idCentro = m.idCentro
	    INNER JOIN Ciudadano ciu ON ciu.DNI = p.DNI
	   
	SELECT Nombre_Establecimiento, Votante, HoraVoto FROM TOPFIVE WHERE NumFila <= 5--cantidad de items por grupo
	
	