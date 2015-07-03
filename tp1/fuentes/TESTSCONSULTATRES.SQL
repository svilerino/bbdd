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
(18,'PRESIDENTEMESA','TRES'),
(19,'PRESIDENTEMESA','CUATRO'),
(20,'PRESIDENTEMESA','CINCO'),
(21,'PRESIDENTEMESA','SEIS'),
(22,'PRESIDENTEMESA','SIETE'),
(23,'PRESIDENTEMESA','OCHO'),
(24,'PRESIDENTEMESA','NUEVE'),
(25,'PRESIDENTEMESA','DIEZ'),
(26,'PRESIDENTEMESA','ONCE'),
(27,'PRESIDENTEMESA','DOCE'),

(28,'VICEPRESIDENTEMESA','UNO'),
(29,'VICEPRESIDENTEMESA','DOS'),
(30,'VICEPRESIDENTEMESA','TRES'),
(31,'VICEPRESIDENTEMESA','CUATRO'),
(32,'VICEPRESIDENTEMESA','CINCO'),
(33,'VICEPRESIDENTEMESA','SEIS'),
(34,'VICEPRESIDENTEMESA','SIETE'),
(35,'VICEPRESIDENTEMESA','OCHO'),
(36,'VICEPRESIDENTEMESA','NUEVE'),
(37,'VICEPRESIDENTEMESA','DIEZ'),
(38,'VICEPRESIDENTEMESA','ONCE'),
(39,'VICEPRESIDENTEMESA','DOCE'),

(40,'CANDIDATO','UNO'),
(41,'CANDIDATO','DOS'),
(42,'CANDIDATO','TRES'),
(43,'CANDIDATO','CUATRO'),
(44,'CANDIDATO','CINCO'),
(45,'CANDIDATO','SEIS'),
(46,'CANDIDATO','SIETE'),
(47,'CANDIDATO','OCHO'),
(48,'CANDIDATO','NUEVE'),
(49,'CANDIDATO','DIEZ'),
(50,'CANDIDATO','ONCE'),
(51,'CANDIDATO','DOCE'),

(52,'TECNICO','UNO'),
(53,'TECNICO','DOS'),

(54,'CONDUCTOR','UNO'),
(55,'CONDUCTOR','DOS');


INSERT INTO Centro VALUES
(1,'ESCUELAUNO','UNO'),
(2,'ESCUELADOS','DOS');


INSERT INTO Camion VALUES
(1,54),
(2,55);

INSERT INTO Camion_Centro VALUES
(1,1),
(2,2);

INSERT INTO Maquina VALUES
(1,52),
(2,53);


INSERT INTO Candidato VALUES
(40), (41), (42), (43), (44), (45), (46), (47), (48), (49), (50), (51);

INSERT INTO Provincia VALUES
(1,'BUENOS AIRES');

INSERT INTO Partido_Politico VALUES
(1,'PARTIDO DE IZQUIERDA'),
(2,'PARTIDO DE DERECHA');

-- USO DE LA STORED PROCEDURE: CREAR ELECCION PROVINCIAL SEIS VECES



INSERT INTO Mesa VALUES
(1,1,16,28,1,1,1),
(2,2,17,29,1,2,2),
(3,3,18,30,2,1,1),
(4,4,19,31,2,2,2),
(5,5,20,32,3,1,1),
(6,6,21,33,3,2,2),
(7,7,22,34,4,1,1),
(8,8,23,35,4,2,2),
(9,9,24,36,5,1,1),
(10,10,25,37,5,2,2),
(11,11,26,38,6,1,1),
(12,12,27,39,6,2,2);	



INSERT INTO Partido_Politico VALUES
(1,'PARTIDO DE IZQUIERDA'),
(2,'PARTIDO DE DERECHA'),
(3,'PARTIDO DE CENTRO'),
(4,'FRENTE POR LA APROBACION'),
(5,'UNIDOS POR LA UNION');


INSERT INTO Postulaciones VALUES
(1,40,1),
(1,41,2),
(2,42,1),
(2,43,2),
(3,44,1),
(3,45,3),
(4,46,1),
(4,47,4),
(5,48,4),
(5,49,5),
(6,50,4),
(6,51,5);

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
(10,2,NULL),
(11,2,NULL),
(12,2,NULL),
(13,2,NULL),
(14,2,NULL),
(15,2,NULL),

(1,3,NULL),
(2,3,NULL),
(3,3,NULL),
(4,3,NULL),
(5,3,NULL),
(6,3,NULL),
(7,3,NULL),
(8,3,NULL),
(9,3,NULL),
(10,4,NULL),
(11,4,NULL),
(12,4,NULL),
(13,4,NULL),
(14,4,NULL),
(15,4,NULL),

(1,5,NULL),
(2,5,NULL),
(3,5,NULL),
(4,5,NULL),
(5,5,NULL),
(6,5,NULL),
(7,5,NULL),
(8,5,NULL),
(9,5,NULL),
(10,6,NULL),
(11,6,NULL),
(12,6,NULL),
(13,6,NULL),
(14,6,NULL),
(15,6,NULL),

(1,7,NULL),
(2,7,NULL),
(3,7,NULL),
(4,7,NULL),
(5,7,NULL),
(6,7,NULL),
(7,7,NULL),
(8,7,NULL),
(9,7,NULL),
(10,8,NULL),
(11,8,NULL),
(12,8,NULL),
(13,8,NULL),
(14,8,NULL),
(15,8,NULL),

(1,9,NULL),
(2,9,NULL),
(3,9,NULL),
(4,9,NULL),
(5,9,NULL),
(6,9,NULL),
(7,9,NULL),
(8,9,NULL),
(9,10,NULL),
(10,10,NULL),
(11,10,NULL),
(12,10,NULL),
(13,10,NULL),
(14,10,NULL),
(15,10,NULL),


(1,11,NULL),
(2,11,NULL),
(3,11,NULL),
(4,11,NULL),
(5,11,NULL),
(6,11,NULL),
(7,11,NULL),
(8,11,NULL),
(9,12,NULL),
(10,12,NULL),
(11,12,NULL),
(12,12,NULL),
(13,12,NULL),
(14,12,NULL),
(15,12,NULL);

-- EN CRIOLLO, HAY 6 ELECCIONES A GOBERNADOR, CADA UNA CON DOS CANDIDATOS
-- CADA ELECCION TIENE DOS MESAS, UNA EN CADA Centro
-- LOS RESULTADOS DEBERIAN SER:
-- ELECCION 1: CANDIDATO UNO (PARTIDO DE IZQUIERDA) VS  CANDIDATO DOS (PARTIDO DE DERECHA)
-- Candidato 40 tiene 10 votos, candidato 41 tiene 5

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 1,
		@idEleccion = 1,
		@DNICandidato = 40;

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 2,
		@idEleccion = 1,
		@DNICandidato = 40

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 3,
		@idEleccion = 1,
		@DNICandidato = 40

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 4,
		@idEleccion = 1,
		@DNICandidato = 40

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 5,
		@idEleccion = 1,
		@DNICandidato = 40

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 6,
		@idEleccion = 1,
		@DNICandidato = 40


EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 7,
		@idEleccion = 1,
		@DNICandidato = 40

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 8,
		@idEleccion = 1,
		@DNICandidato = 40

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 9,
		@idEleccion = 1,
		@DNICandidato = 40

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 10,
		@idEleccion = 1,
		@DNICandidato = 40

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 11,
		@idEleccion = 1,
		@DNICandidato = 41

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 12,
		@idEleccion = 1,
		@DNICandidato = 41

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 13,
		@idEleccion = 1,
		@DNICandidato = 41

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 14,
		@idEleccion = 1,
		@DNICandidato = 41

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 15,
		@idEleccion = 1,
		@DNICandidato = 41

-- ELECCION 2: CANDIDATO TRES (PARTIDO DE IZQUIERDA) VS  CANDIDATO CUATRO (PARTIDO DE DERECHA)
-- Candidato 42 tiene 10 votos, candidato 43 tiene 5
EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 1,
		@idEleccion = 2,
		@DNICandidato = 42

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 2,
		@idEleccion = 2,
		@DNICandidato = 42

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 3,
		@idEleccion = 2,
		@DNICandidato = 42

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 4,
		@idEleccion = 2,
		@DNICandidato = 42

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 5,
		@idEleccion = 2,
		@DNICandidato = 42

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 6,
		@idEleccion = 2,
		@DNICandidato = 42


EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 7,
		@idEleccion = 2,
		@DNICandidato = 42

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 8,
		@idEleccion = 2,
		@DNICandidato = 42

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 9,
		@idEleccion = 2,
		@DNICandidato = 42

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 10,
		@idEleccion = 2,
		@DNICandidato = 42

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 11,
		@idEleccion = 2,
		@DNICandidato = 43

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 12,
		@idEleccion = 2,
		@DNICandidato = 43

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 13,
		@idEleccion = 2,
		@DNICandidato = 43

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 14,
		@idEleccion = 2,
		@DNICandidato = 43

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 15,
		@idEleccion = 2,
		@DNICandidato = 43

-- ELECCION 3: CANDIDATO CINCO (PARTIDO DE IZQUIERDA) VS  CANDIDATO SEIS (PARTIDO DE CENTRO)
-- Candidato 44 tiene 10 votos, candidato 45 tiene 5

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 1,
		@idEleccion = 3,
		@DNICandidato = 44

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 2,
		@idEleccion = 3,
		@DNICandidato = 44

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 3,
		@idEleccion = 3,
		@DNICandidato = 44

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 4,
		@idEleccion = 3,
		@DNICandidato = 44

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 5,
		@idEleccion = 3,
		@DNICandidato = 44

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 6,
		@idEleccion = 3,
		@DNICandidato = 44


EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 7,
		@idEleccion = 3,
		@DNICandidato = 44

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 8,
		@idEleccion = 3,
		@DNICandidato = 44

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 9,
		@idEleccion = 3,
		@DNICandidato = 44

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 10,
		@idEleccion = 3,
		@DNICandidato = 44

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 11,
		@idEleccion = 3,
		@DNICandidato = 45

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 12,
		@idEleccion = 3,
		@DNICandidato = 45

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 13,
		@idEleccion = 3,
		@DNICandidato = 45

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 14,
		@idEleccion = 3,
		@DNICandidato = 45

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 15,
		@idEleccion = 3,
		@DNICandidato = 45

-- ELECCION 4: CANDIDATO SIETE (PARTIDO DE IZQUIERDA) VS  CANDIDATO OCHO (FRENTE POR LA APROBACION)
-- Candidato 46 tiene 10 votos, candidato 47 tiene 5

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 1,
		@idEleccion = 4,
		@DNICandidato = 46

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 2,
		@idEleccion = 4,
		@DNICandidato = 46

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 3,
		@idEleccion = 4,
		@DNICandidato = 46

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 4,
		@idEleccion = 4,
		@DNICandidato = 46

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 5,
		@idEleccion = 4,
		@DNICandidato = 46

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 6,
		@idEleccion = 4,
		@DNICandidato = 46


EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 7,
		@idEleccion = 4,
		@DNICandidato = 46

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 8,
		@idEleccion = 4,
		@DNICandidato = 46

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 9,
		@idEleccion = 4,
		@DNICandidato = 46

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 10,
		@idEleccion = 4,
		@DNICandidato = 46

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 11,
		@idEleccion = 4,
		@DNICandidato = 47

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 12,
		@idEleccion = 4,
		@DNICandidato = 47

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 13,
		@idEleccion = 4,
		@DNICandidato = 47

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 14,
		@idEleccion = 4,
		@DNICandidato = 47

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 15,
		@idEleccion = 4,
		@DNICandidato = 47

-- ELECCION 5: CANDIDATO NUEVE (FRENTE POR LA APROBACION) VS  CANDIDATO DIEZ (UNIDOS POR LA UNION)
-- Candidato 48 tiene 15 votos, candidato 49 tiene 0

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 1,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 2,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 3,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 4,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 5,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 6,
		@idEleccion = 5,
		@DNICandidato = 48


EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 7,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 8,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 9,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 10,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 11,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 12,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 13,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 14,
		@idEleccion = 5,
		@DNICandidato = 48

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 15,
		@idEleccion = 5,
		@DNICandidato = 48

-- ELECCION 6: CANDIDATO ONCE (FRENTE POR LA APROBACION) VS  CANDIDATO DOCE (UNIDOS POR LA UNION)
-- Candidato 50 tiene 15 votos, candidato 51 tiene 0

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 1,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 2,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 3,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 4,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 5,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 6,
		@idEleccion = 6,
		@DNICandidato = 50


EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 7,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 8,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 9,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 10,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 11,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 12,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 13,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 14,
		@idEleccion = 6,
		@DNICandidato = 50

EXEC	[dbo].[Votar_Candidato]
		@DNIVotante = 15,
		@idEleccion = 6,
		@DNICandidato = 50