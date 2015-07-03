USE [bbdd_tp1]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteAllData]    Script Date: 07/02/2015 15:17:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteAllData] AS EXEC sp_MSForEachTable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL' EXEC sp_MSForEachTable 'ALTER TABLE ? DISABLE TRIGGER ALL' EXEC sp_MSForEachTable 'DELETE FROM ?' EXEC sp_MSForEachTable 'ALTER TABLE ? CHECK CONSTRAINT ALL' EXEC sp_MSForEachTable 'ALTER TABLE ? ENABLE TRIGGER ALL' EXEC sp_MSFOREACHTABLE 'SELECT * FROM ?'
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provincia](
	[idProvincia] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[idProvincia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Eleccion]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Eleccion](
	[idEleccion] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[tipo] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Eleccion] PRIMARY KEY CLUSTERED 
(
	[idEleccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciudadano]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciudadano](
	[DNI] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ciudadano] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Centro]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Centro](
	[idCentro] [int] NOT NULL,
	[Nombre_Establecimiento] [varchar](50) NOT NULL,
	[Direccion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Centro] PRIMARY KEY CLUSTERED 
(
	[idCentro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Partido_Politico]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Partido_Politico](
	[idPartido] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Partido_Politico] PRIMARY KEY CLUSTERED 
(
	[idPartido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Municipio](
	[idMunicipio] [int] NOT NULL,
	[idProvincia] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Municipio] PRIMARY KEY CLUSTERED 
(
	[idMunicipio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Eleccion_Cargo_Legislativo]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eleccion_Cargo_Legislativo](
	[idEleccion] [int] NOT NULL,
	[idProvincia] [int] NOT NULL,
 CONSTRAINT [PK_Eleccion_Cargo_Legislativo] PRIMARY KEY CLUSTERED 
(
	[idEleccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maquina]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquina](
	[idMaquina] [int] NOT NULL,
	[idTecnico] [int] NOT NULL,
 CONSTRAINT [PK_Maquina] PRIMARY KEY CLUSTERED 
(
	[idMaquina] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camion]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Camion](
	[Patente] [varchar](6) NOT NULL,
	[idConductor] [int] NOT NULL,
 CONSTRAINT [PK_Camion] PRIMARY KEY CLUSTERED 
(
	[Patente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fiscal_Partidario]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fiscal_Partidario](
	[DNI] [int] NOT NULL,
	[idPartido] [int] NOT NULL,
 CONSTRAINT [PK_Fiscal_Partidario] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eleccion_Consulta_Popular]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Eleccion_Consulta_Popular](
	[idEleccion] [int] NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Eleccion_Consulta_Popular] PRIMARY KEY CLUSTERED 
(
	[idEleccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Eleccion_Cargo_Provincial]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eleccion_Cargo_Provincial](
	[idEleccion] [int] NOT NULL,
	[idProvincia] [int] NOT NULL,
 CONSTRAINT [PK_Eleccion_Cargo_Provincial] PRIMARY KEY CLUSTERED 
(
	[idEleccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidato](
	[DNI] [int] NOT NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postulaciones]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postulaciones](
	[idEleccion] [int] NOT NULL,
	[DNI] [int] NOT NULL,
	[idPartido] [int] NOT NULL,
 CONSTRAINT [PK_Postulaciones] PRIMARY KEY CLUSTERED 
(
	[idEleccion] ASC,
	[DNI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [Unique_Key_Eleccion_Partido] UNIQUE NONCLUSTERED 
(
	[idEleccion] ASC,
	[idPartido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camion_Centro]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Camion_Centro](
	[Patente] [varchar](6) NOT NULL,
	[idCentro] [int] NOT NULL,
 CONSTRAINT [PK_Camion_Centro] PRIMARY KEY CLUSTERED 
(
	[Patente] ASC,
	[idCentro] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Crear_Eleccion_Provincial]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Crear_Eleccion_Provincial]
	@idProvincia int,
	@FechaEleccion date
AS
BEGIN
	SET NOCOUNT ON;
	--recordar activar el bit que aborta y rollbackea la tx en caso de error
		SET XACT_ABORT ON
	-- Especifica si SQL Server revierte automáticamente la transacción actual cuando una instrucción Transact-SQL genera un error en tiempo de ejecución.
    
    BEGIN TRANSACTION meterEleccion
		DECLARE @maxId int;
		SELECT @maxId = COALESCE(MAX(e.idEleccion), 0) From Eleccion e;
		INSERT INTO Eleccion VALUES(@maxId+1, @FechaEleccion, 'Cargo Provincial');
		INSERT INTO Eleccion_Cargo_Provincial VALUES(@maxId+1, @idProvincia);
    COMMIT TRANSACTION meterEleccion
END
GO
/****** Object:  Table [dbo].[Eleccion_Cargo_Municipal]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eleccion_Cargo_Municipal](
	[idEleccion] [int] NOT NULL,
	[idMunicipio] [int] NOT NULL,
 CONSTRAINT [PK_Eleccion_Cargo_Municipal] PRIMARY KEY CLUSTERED 
(
	[idEleccion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Crear_Eleccion_Legislativa]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Crear_Eleccion_Legislativa]
	@idProvincia int,
	@FechaEleccion date
AS
BEGIN
	SET NOCOUNT ON;
	--recordar activar el bit que aborta y rollbackea la tx en caso de error
		SET XACT_ABORT ON
	-- Especifica si SQL Server revierte automáticamente la transacción actual cuando una instrucción Transact-SQL genera un error en tiempo de ejecución.
    
    BEGIN TRANSACTION meterEleccion
		DECLARE @maxId int;
		SELECT @maxId = COALESCE(MAX(e.idEleccion), 0) From Eleccion e;
		INSERT INTO Eleccion VALUES(@maxId+1, @FechaEleccion, 'Cargo Legislativo');
		INSERT INTO Eleccion_Cargo_Legislativo VALUES(@maxId+1, @idProvincia);
    COMMIT TRANSACTION meterEleccion
END
GO
/****** Object:  StoredProcedure [dbo].[Crear_Consulta_Popular]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Crear_Consulta_Popular] 
	@DescripcionConsulta varchar(250),
	@FechaEleccion date
AS
BEGIN
	SET NOCOUNT ON;
	--recordar activar el bit que aborta y rollbackea la tx en caso de error
		SET XACT_ABORT ON
	-- Especifica si SQL Server revierte automáticamente la transacción actual cuando una instrucción Transact-SQL genera un error en tiempo de ejecución.
    
    BEGIN TRANSACTION meterEleccion
		DECLARE @maxId int;
		SELECT @maxId = COALESCE(MAX(e.idEleccion), 0) From Eleccion e;
		INSERT INTO Eleccion VALUES(@maxId+1, @FechaEleccion, 'Consulta Popular');
		INSERT INTO Eleccion_Consulta_Popular VALUES(@maxId+1, @DescripcionConsulta);
    COMMIT TRANSACTION meterEleccion
	
		
END
GO
/****** Object:  Table [dbo].[Mesa]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesa](
	[idMesa] [int] NOT NULL,
	[nroMesa] [int] NOT NULL,
	[idPresidente] [int] NOT NULL,
	[idVicePresidente] [int] NOT NULL,
	[idEleccion] [int] NOT NULL,
	[idCentro] [int] NOT NULL,
	[idMaquina] [int] NOT NULL,
 CONSTRAINT [PK_Mesa] PRIMARY KEY CLUSTERED 
(
	[idMesa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Padron]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Padron](
	[DNI] [int] NOT NULL,
	[idMesa] [int] NOT NULL,
	[selloVoto] [datetime] NULL,
 CONSTRAINT [PK_Padron] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC,
	[idMesa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fiscales]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fiscales](
	[DNI] [int] NOT NULL,
	[idMesa] [int] NOT NULL,
 CONSTRAINT [PK_Fiscales] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC,
	[idMesa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Crear_Eleccion_Municipal]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Crear_Eleccion_Municipal] 
	@idMunicipio int,
	@FechaEleccion date
AS
BEGIN
	SET NOCOUNT ON;
	--recordar activar el bit que aborta y rollbackea la tx en caso de error
		SET XACT_ABORT ON
	-- Especifica si SQL Server revierte automáticamente la transacción actual cuando una instrucción Transact-SQL genera un error en tiempo de ejecución.
    
    BEGIN TRANSACTION meterEleccion
		DECLARE @maxId int;
		SELECT @maxId = COALESCE(MAX(e.idEleccion), 0) From Eleccion e;
		INSERT INTO Eleccion VALUES(@maxId+1, @FechaEleccion, 'Cargo Municipal');
		INSERT INTO Eleccion_Cargo_Municipal VALUES(@maxId+1, @idMunicipio);
    COMMIT TRANSACTION meterEleccion
END
GO
/****** Object:  Table [dbo].[Voto]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Voto](
	[idVoto] [int] NOT NULL,
	[idMesa] [int] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Voto] PRIMARY KEY CLUSTERED 
(
	[idVoto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Trigger [trg_check_maquina_mesa_unicas_por_eleccion]    Script Date: 07/02/2015 15:17:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_check_maquina_mesa_unicas_por_eleccion]
   ON [dbo].[Mesa]
   INSTEAD OF INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	-- Obtengo idEleccion de la mesa
	-- Obtengo idMaquina de la mesa
	DECLARE @idEleccion int
	DECLARE @idMaquina int
	SELECT @idEleccion = i.idEleccion, @idMaquina = i.idMaquina FROM inserted i
	
	-- Quiero que no exista otra mesa con este idMaquina en esta eleccion
	IF EXISTS(SELECT * FROM Mesa m
	WHERE m.idEleccion = @idEleccion
	AND m.idMaquina = @idMaquina)
		--Ya hay una mesa con esta maquina en esta eleccion
		--Ya hay mesa en esta eleccion para este DNI 
		RAISERROR('Ya existe una mesa en esta eleccion con esta maquina.', 0, 0)
	ELSE
		-- No hay, prosigo a insertar
		INSERT INTO Mesa SELECT * FROM inserted
END
GO
/****** Object:  Trigger [trg_check_votoTipoEleccion]    Script Date: 07/02/2015 15:17:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_check_votoTipoEleccion] on [dbo].[Voto] AFTER INSERT AS 
			BEGIN
				SET NOCOUNT ON;
				-- Consigo el tipo de la eleccion de la mesa en la que se va a efectuar el voto
					DECLARE @tipoEleccion Varchar(250)--mismo varchar que tipo de eleccion.
					SELECT @tipoEleccion = e.tipo FROM inserted i INNER JOIN Mesa m ON m.idMesa = i.idMesa  INNER JOIN Eleccion e ON m.idEleccion = e.idEleccion
					
				-- Consigo tipo de voto a insertar
					DECLARE @tipoVoto Varchar(250)
					SELECT @tipoVoto = i.tipo FROM inserted i
					
					-- Asumo que el campo tipo esta correctamente validado en las tablas involucradas, por lo cual la eleccion puede ser a Consulta Popular o a cargos varios.
					
					IF(@tipoEleccion = 'Consulta Popular') BEGIN-- Eleccion es a consulta popular
						IF(@tipoVoto <> 'A Plesbicito Si' AND @tipoVoto <> 'A Plesbicito No') BEGIN
							RAISERROR('La eleccion es para Consulta Popular pero el voto no es a plesbicito.', 0, 0)
							ROLLBACK TRANSACTION;
							RETURN;
						END
					END
					
					IF(@tipoEleccion <> 'Consulta Popular') BEGIN-- Eleccion es a cargo
						IF(@tipoVoto <> 'A Candidato') BEGIN
							RAISERROR('La eleccion es para Cargo pero el voto no es a candidato.', 0, 0)
							ROLLBACK TRANSACTION;
							RETURN;
						END
					END
			END;
GO
/****** Object:  Trigger [trg_check_mesa_unica_por_eleccion]    Script Date: 07/02/2015 15:17:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_check_mesa_unica_por_eleccion]
   ON  [dbo].[Padron]
   INSTEAD OF INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	-- Queremos que exista una unica relacion ( (DNI, Mesa) , Mesa.Eleccion)
	
	--Obtenemos el idEleccion desde la mesa
	DECLARE @idEleccion int
	SELECT @idEleccion = m.idEleccion FROM inserted i INNER JOIN Mesa m ON m.idMesa = i.idMesa
	
	DECLARE @DNI int
	SELECT @DNI = i.DNI FROM inserted i
	
	-- Obtenemos las mesas en las que puede votar este dni en esta eleccion
	IF EXISTS (SELECT p.idMesa FROM Padron p 
	WHERE (p.DNI = @DNI) AND p.idMesa IN (
	SELECT m.idMesa FROM Mesa m WHERE m.idEleccion = @idEleccion)  
	)
		--Ya hay mesa en esta eleccion para este DNI 
		RAISERROR('Ya existe una mesa en la cual esta persona vota en esta eleccion.', 0, 0)
	ELSE
		-- No hay mesa, continuo con la insercion
		INSERT INTO Padron SELECT * FROM inserted;
END
GO
/****** Object:  Table [dbo].[Voto_A_Candidato]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voto_A_Candidato](
	[idVoto] [int] NOT NULL,
	[DNI] [int] NOT NULL,
 CONSTRAINT [PK_Voto_A_Candidato] PRIMARY KEY CLUSTERED 
(
	[idVoto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[Votar_Consulta_Popular]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Votar_Consulta_Popular]
	@DNIVotante int,
	@IdEleccion int,
    @Opcion_Voto int--0 es no , 1 es si. 
AS
BEGIN
	SET NOCOUNT ON;
	--Obtener idEleccion
	   
    --Obtener fecha de la eleccion
    DECLARE @fechaEleccion date
    SELECT @fechaEleccion = e.Fecha FROM Eleccion e WHERE e.idEleccion = @idEleccion;
    
    
    -- Validar que sea fecha de votacion
    IF(@fechaEleccion <> convert(date, GETDATE())) 
	BEGIN
		RAISERROR('La fecha de hoy es distinta de la fecha de la eleccion.', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
	
		
	-- Validar que sea horario de votacion(de 8am a 6pm)
	DECLARE @fechaHoraActual datetime
	set @fechaHoraActual = DATEPART(hour, GETDATE())
    IF(@fechaHoraActual < 8 OR @fechaHoraActual > 18) 
	BEGIN
		RAISERROR('Estamos fuera de horario de votacion.', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
    
    --Obtener la mesa del voto y validar que este en el padron
    
    DECLARE @idMesaDelVoto int
    SELECT @idMesaDelVoto= m.idMesa
    FROM Mesa m 
		INNER JOIN Padron p
			ON m.idMesa = p.idMesa
	WHERE m.idEleccion = @IdEleccion AND p.DNI = @DNIVotante
	
	If(@idMesaDelVoto IS NULL)
    BEGIN
		RAISERROR('El votante no esta en el padron', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
    
    --Validar que el votante tenga el campo selloVoto 
    --en NULL (que no haya votado en esta eleccion) en el padron de esta mesa y ese dni.
    DECLARE @selloAntesVotar datetime
    SELECT @selloAntesVotar = p.selloVoto FROM Padron p WHERE p.idMesa = @idMesaDelVoto AND p.DNI = @DNIVotante
    IF(@selloAntesVotar IS NOT NULL) 
	BEGIN
		RAISERROR('Esta persona ya voto en esta eleccion.', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
    
    --recordar activar el bit que aborta y rollbackea la tx en caso de error
		SET XACT_ABORT ON
	-- Especifica si SQL Server revierte automáticamente la transacción actual cuando una instrucción Transact-SQL genera un error en tiempo de ejecución.
    
    BEGIN TRANSACTION meterElVoto
		-- Si @Opcion_Voto = 0
			--Insertar el voto en Voto con el tipo "A Plesbicito No".
			--Remember que hay un trigger en voto que valida tipo eleccion y tipo voto.
	    
	    -- Si @Opcion_Voto = 1
			--Insertar el voto en Voto con el tipo "A Plesbicito Si".
			--Remember que hay un trigger en voto que valida tipo eleccion y tipo voto.
		
	    DECLARE @maxId int;
	    SELECT @maxId = COALESCE(MAX(v.idVoto), 0) From Voto v;
	    IF(@Opcion_Voto = 0)
	    BEGIN						
			INSERT INTO Voto VALUES(@maxId+1, @idMesaDelVoto, 'A Plesbicito No');
	    END
	    ELSE 
		BEGIN
			IF (@Opcion_Voto = 1)
			BEGIN
			INSERT INTO Voto VALUES(@maxId+1, @idMesaDelVoto, 'A Plesbicito Si');			
			END
	    END
	    
		--Updatear el campo selloVoto del padron de la persona que acaba de votar con NOW()
		UPDATE Padron SET selloVoto = GETDATE() WHERE DNI = @DNIVotante AND idMesa = @idMesaDelVoto;		

    COMMIT TRANSACTION meterElVoto
END
GO
/****** Object:  StoredProcedure [dbo].[Votar_Candidato]    Script Date: 07/02/2015 15:17:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Votar_Candidato]
	@DNIVotante int,
    @idEleccion int, 
    @DNICandidato int 
AS
BEGIN
	SET NOCOUNT ON;

    
    --Obtener fecha de la eleccion
    DECLARE @fechaEleccion date
    SELECT @fechaEleccion = e.Fecha FROM Eleccion e WHERE e.idEleccion = @idEleccion;
    
    -- Validar que sea fecha de votacion
    IF(@fechaEleccion <> convert(date, GETDATE())) 
	BEGIN
		RAISERROR('La fecha de hoy es distinta de la fecha de la eleccion.', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
	
	-- Validar que sea horario de votacion(de 8am a 6pm)
	DECLARE @fechaHoraActual datetime
	set @fechaHoraActual = DATEPART(hour, GETDATE())
    IF(@fechaHoraActual < 8 OR @fechaHoraActual > 18) 
	BEGIN
		RAISERROR('Estamos fuera de horario de votacion.', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
    
	   --Obtener la mesa del voto y validar que este en el padron
    
    DECLARE @idMesaDelVoto int
    SELECT @idMesaDelVoto= m.idMesa
    FROM Mesa m 
		INNER JOIN Padron p
			ON m.idMesa = p.idMesa
	WHERE m.idEleccion = @IdEleccion AND p.DNI = @DNIVotante
	
	If(@idMesaDelVoto IS NULL)
    BEGIN
		RAISERROR('El votante no esta en el padron', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
    
    
    --Validar que el votante tenga el campo selloVoto 
    --en NULL (que no haya votado en esta eleccion) en el padron de esta mesa y ese dni.
    DECLARE @selloAntesVotar datetime
    SELECT @selloAntesVotar = p.selloVoto FROM Padron p WHERE p.idMesa = @idMesaDelVoto AND p.DNI = @DNIVotante
    IF(@selloAntesVotar IS NOT NULL) 
	BEGIN
		RAISERROR('Esta persona ya voto en esta eleccion.', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
    
    --recordar activar el bit que aborta y rollbackea la tx en caso de error
		SET XACT_ABORT ON
	-- Especifica si SQL Server revierte automáticamente la transacción actual cuando una instrucción Transact-SQL genera un error en tiempo de ejecución.
    
    BEGIN TRANSACTION meterElVoto
		--Insertar el voto en Voto con el tipo A Candidato.
			--Remember que hay un trigger en voto que valida tipo eleccion y tipo voto.
		DECLARE @maxId int;
		SELECT @maxId = COALESCE(MAX(v.idVoto), 0) From Voto v;
		INSERT INTO Voto VALUES(@maxId+1, @idMesaDelVoto, 'A Candidato');
		
		--Insertar el voto en Voto_A_Candidato con el DNI del votante
			--Remember que en Voto_A_Candidato hay un trigger que valida que el candidato este postulado a la eleccion
		INSERT INTO Voto_A_Candidato VALUES(@maxId+1, @DNICandidato);
	    
		--Updatear el campo selloVoto del padron de la persona que acaba de votar con NOW()
		UPDATE Padron SET selloVoto = GETDATE() WHERE DNI = @DNIVotante AND idMesa = @idMesaDelVoto;		

    COMMIT TRANSACTION meterElVoto
END
GO
/****** Object:  Trigger [trg_check_candidato_valido]    Script Date: 07/02/2015 15:17:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_check_candidato_valido]
   ON  [dbo].[Voto_A_Candidato]
   AFTER INSERT
AS 
BEGIN	
	-- El voto a candidato tiene un registro en la tabla voto, con la cual podemos inferir la eleccion, y de ella los candidatos.
	-- Queremos ver que el DNI a insertar como voto a candidato este en la lista de candidatos de dicha eleccion.    
	
	SET NOCOUNT ON;
	-- Consigo el id de la eleccion en curso
	DECLARE @idEleccion int
	SELECT @idEleccion = m.idEleccion FROM inserted i INNER JOIN Voto v on i.idVoto = v.idVoto INNER JOIN Mesa m ON m.idMesa = v.idMesa 
				
	-- Consigo el DNI del candidato a votar de la tabla inserted
	DECLARE @dniCandidatoAVotar int
	SELECT @dniCandidatoAVotar = i.DNI FROM inserted i
	
	-- Consigo los candidatos postulados a dicha eleccion y me fijo que el candidato este postulado
	IF(@dniCandidatoAVotar NOT IN (SELECT p.DNI FROM Postulaciones p WHERE p.idEleccion = @idEleccion)) 
	BEGIN
		RAISERROR('El candidato a votar no esta postulado para esta eleccion.', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
	
END
GO
/****** Object:  View [dbo].[Ranking_Elecciones_Cargo_Ultimo_Anio]    Script Date: 07/02/2015 15:17:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ranking_Elecciones_Cargo_Ultimo_Anio]
AS
SELECT     TOP (100) PERCENT elec.Fecha AS FechaEleccion, elec.tipo AS TipoEleccion, ciu.Nombre + ciu.Apellido AS Candidato, COUNT(vc.idVoto) AS CantVotos
FROM         dbo.Voto AS v INNER JOIN
                      dbo.Voto_A_Candidato AS vc ON v.idVoto = vc.idVoto INNER JOIN
                      dbo.Ciudadano AS ciu ON vc.DNI = ciu.DNI INNER JOIN
                      dbo.Mesa AS m ON m.idMesa = v.idMesa INNER JOIN
                      dbo.Eleccion AS elec ON elec.idEleccion = m.idEleccion
WHERE     (v.idMesa IN
                          (SELECT     idMesa
                            FROM          dbo.Mesa AS m
                            WHERE      (idEleccion IN
                                                       (SELECT     idEleccion
                                                         FROM          dbo.Eleccion AS e
                                                         WHERE      (YEAR(Fecha) = YEAR(GETDATE()))))))
GROUP BY vc.DNI, ciu.Nombre, ciu.Apellido, elec.Fecha, elec.tipo
ORDER BY FechaEleccion, CantVotos DESC
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "v"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vc"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 99
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ciu"
            Begin Extent = 
               Top = 6
               Left = 466
               Bottom = 114
               Right = 642
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "m"
            Begin Extent = 
               Top = 102
               Left = 252
               Bottom = 225
               Right = 435
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "elec"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ranking_Elecciones_Cargo_Ultimo_Anio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ranking_Elecciones_Cargo_Ultimo_Anio'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ranking_Elecciones_Cargo_Ultimo_Anio'
GO
/****** Object:  View [dbo].[Ranking_Candidatos_Ultimas_5_Elecciones_A_Gobernador]    Script Date: 07/02/2015 15:17:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ranking_Candidatos_Ultimas_5_Elecciones_A_Gobernador]
AS
SELECT elec.idEleccion, elec.Fecha AS FechaEleccion, ciu.Nombre + ciu.Apellido AS Candidato, partPolitico.Nombre as PartidoPolitico, 
COUNT(vc.idVoto) AS CantVotos,  

SUM(COUNT(vc.idVoto)) over (
	        PARTITION BY elec.idEleccion
	    ) AS Cant_Total_Votos_Por_Eleccion  

FROM         dbo.Voto AS v 
                      INNER JOIN dbo.Voto_A_Candidato AS vc ON v.idVoto = vc.idVoto 
                      INNER JOIN dbo.Ciudadano AS ciu ON vc.DNI = ciu.DNI 
                      INNER JOIN dbo.Mesa AS m ON m.idMesa = v.idMesa 
                      INNER JOIN dbo.Eleccion AS elec ON elec.idEleccion = m.idEleccion
                      INNER JOIN dbo.Postulaciones post ON (post.idEleccion = elec.idEleccion AND post.DNI = ciu.DNI)
                      INNER JOIN dbo.Partido_Politico partPolitico ON post.idPartido = partPolitico.idPartido
WHERE     (v.idMesa IN
              (SELECT     idMesa
                FROM          dbo.Mesa AS m
                WHERE      (idEleccion IN
		           (SELECT     TOP (5) e.idEleccion
		             FROM          dbo.Eleccion AS e INNER JOIN
		                                    dbo.Eleccion_Cargo_Provincial AS ecp ON ecp.idEleccion = e.idEleccion
		             WHERE      (e.tipo = 'Cargo Provincial') AND (YEAR(e.Fecha) = YEAR(GETDATE()))
		             ORDER BY e.Fecha DESC))))
GROUP BY vc.DNI, partPolitico.Nombre, ciu.Nombre, ciu.Apellido, elec.Fecha, elec.idEleccion
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ranking_Candidatos_Ultimas_5_Elecciones_A_Gobernador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Ranking_Candidatos_Ultimas_5_Elecciones_A_Gobernador'
GO
/****** Object:  View [dbo].[Partidos_Con_Mas_Del_20_Porciento_Ultimas_5_Gobernador]    Script Date: 07/02/2015 15:17:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Partidos_Con_Mas_Del_20_Porciento_Ultimas_5_Gobernador]
AS
SELECT     TOP (100) PERCENT FechaEleccion, PartidoPolitico, CantVotos * 100 / Cant_Total_Votos_Por_Eleccion AS Porcentaje
FROM         dbo.Ranking_Candidatos_Ultimas_5_Elecciones_A_Gobernador
WHERE     (CantVotos * 100 / Cant_Total_Votos_Por_Eleccion >= 20)
ORDER BY FechaEleccion, CantVotos DESC
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Ranking_Candidatos_Ultimas_5_Elecciones_A_Gobernador"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 129
               Right = 279
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Partidos_Con_Mas_Del_20_Porciento_Ultimas_5_Gobernador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'Partidos_Con_Mas_Del_20_Porciento_Ultimas_5_Gobernador'
GO
/****** Object:  Default [DF_Padron_selloVoto]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Padron] ADD  CONSTRAINT [DF_Padron_selloVoto]  DEFAULT (NULL) FOR [selloVoto]
GO
/****** Object:  Check [CK_Eleccion_TipoValido]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Eleccion]  WITH NOCHECK ADD  CONSTRAINT [CK_Eleccion_TipoValido] CHECK  (([tipo]='Consulta Popular' OR [tipo]='Cargo Federal' OR [tipo]='Cargo Municipal' OR [tipo]='Cargo Provincial' OR [tipo]='Cargo Legislativo'))
GO
ALTER TABLE [dbo].[Eleccion] CHECK CONSTRAINT [CK_Eleccion_TipoValido]
GO
/****** Object:  Check [CK_Mesa_Presidente_VPresidente_Distintos]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Mesa]  WITH NOCHECK ADD  CONSTRAINT [CK_Mesa_Presidente_VPresidente_Distintos] CHECK  (([idPresidente]<>[idVicePresidente]))
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [CK_Mesa_Presidente_VPresidente_Distintos]
GO
/****** Object:  Check [CK_Voto_TipoValido]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Voto]  WITH NOCHECK ADD  CONSTRAINT [CK_Voto_TipoValido] CHECK  (([tipo]='A Plesbicito No' OR [tipo]='A Plesbicito Si' OR [tipo]='A Candidato'))
GO
ALTER TABLE [dbo].[Voto] CHECK CONSTRAINT [CK_Voto_TipoValido]
GO
/****** Object:  ForeignKey [FK_Candidato_Ciudadano]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Candidato]  WITH NOCHECK ADD  CONSTRAINT [FK_Candidato_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Legislativo_Eleccion]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo]  WITH NOCHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo] CHECK CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Legislativo_Provincia]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo]  WITH NOCHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo] CHECK CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Provincia]
GO
/****** Object:  ForeignKey [FK_Maquina_Ciudadano_Tecnico]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Maquina]  WITH NOCHECK ADD  CONSTRAINT [FK_Maquina_Ciudadano_Tecnico] FOREIGN KEY([idTecnico])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Maquina] CHECK CONSTRAINT [FK_Maquina_Ciudadano_Tecnico]
GO
/****** Object:  ForeignKey [FK_Camion_Ciudadano_Conductor]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Camion]  WITH NOCHECK ADD  CONSTRAINT [FK_Camion_Ciudadano_Conductor] FOREIGN KEY([idConductor])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Camion] CHECK CONSTRAINT [FK_Camion_Ciudadano_Conductor]
GO
/****** Object:  ForeignKey [FK_Fiscal_Partidario_Ciudadano]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Fiscal_Partidario]  WITH NOCHECK ADD  CONSTRAINT [FK_Fiscal_Partidario_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Fiscal_Partidario] CHECK CONSTRAINT [FK_Fiscal_Partidario_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Fiscal_Partidario_Partido_Politico]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Fiscal_Partidario]  WITH NOCHECK ADD  CONSTRAINT [FK_Fiscal_Partidario_Partido_Politico] FOREIGN KEY([idPartido])
REFERENCES [dbo].[Partido_Politico] ([idPartido])
GO
ALTER TABLE [dbo].[Fiscal_Partidario] CHECK CONSTRAINT [FK_Fiscal_Partidario_Partido_Politico]
GO
/****** Object:  ForeignKey [FK_Eleccion_Consulta_Popular_Eleccion]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Eleccion_Consulta_Popular]  WITH NOCHECK ADD  CONSTRAINT [FK_Eleccion_Consulta_Popular_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Consulta_Popular] CHECK CONSTRAINT [FK_Eleccion_Consulta_Popular_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Provincial_Eleccion]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial]  WITH NOCHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Provincial_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial] CHECK CONSTRAINT [FK_Eleccion_Cargo_Provincial_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Provincial_Provincia]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial]  WITH NOCHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Provincial_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial] CHECK CONSTRAINT [FK_Eleccion_Cargo_Provincial_Provincia]
GO
/****** Object:  ForeignKey [FK_Municipio_Provincia]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Municipio]  WITH NOCHECK ADD  CONSTRAINT [FK_Municipio_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Provincia]
GO
/****** Object:  ForeignKey [FK_Mesa_Centro]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Mesa]  WITH NOCHECK ADD  CONSTRAINT [FK_Mesa_Centro] FOREIGN KEY([idCentro])
REFERENCES [dbo].[Centro] ([idCentro])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Centro]
GO
/****** Object:  ForeignKey [FK_Mesa_Ciudadano_Presidente]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Mesa]  WITH NOCHECK ADD  CONSTRAINT [FK_Mesa_Ciudadano_Presidente] FOREIGN KEY([idPresidente])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Ciudadano_Presidente]
GO
/****** Object:  ForeignKey [FK_Mesa_Ciudadano_VicePresidente]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Mesa]  WITH NOCHECK ADD  CONSTRAINT [FK_Mesa_Ciudadano_VicePresidente] FOREIGN KEY([idVicePresidente])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Ciudadano_VicePresidente]
GO
/****** Object:  ForeignKey [FK_Mesa_Eleccion]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Mesa]  WITH NOCHECK ADD  CONSTRAINT [FK_Mesa_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Eleccion]
GO
/****** Object:  ForeignKey [FK_Mesa_Maquina]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Mesa]  WITH NOCHECK ADD  CONSTRAINT [FK_Mesa_Maquina] FOREIGN KEY([idMaquina])
REFERENCES [dbo].[Maquina] ([idMaquina])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Maquina]
GO
/****** Object:  ForeignKey [FK_Postulaciones_Candidato]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Postulaciones]  WITH NOCHECK ADD  CONSTRAINT [FK_Postulaciones_Candidato] FOREIGN KEY([DNI])
REFERENCES [dbo].[Candidato] ([DNI])
GO
ALTER TABLE [dbo].[Postulaciones] CHECK CONSTRAINT [FK_Postulaciones_Candidato]
GO
/****** Object:  ForeignKey [FK_Postulaciones_Eleccion]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Postulaciones]  WITH NOCHECK ADD  CONSTRAINT [FK_Postulaciones_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Postulaciones] CHECK CONSTRAINT [FK_Postulaciones_Eleccion]
GO
/****** Object:  ForeignKey [FK_Postulaciones_Partido_Politico]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Postulaciones]  WITH NOCHECK ADD  CONSTRAINT [FK_Postulaciones_Partido_Politico] FOREIGN KEY([idPartido])
REFERENCES [dbo].[Partido_Politico] ([idPartido])
GO
ALTER TABLE [dbo].[Postulaciones] CHECK CONSTRAINT [FK_Postulaciones_Partido_Politico]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Municipal_Eleccion]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal]  WITH NOCHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Municipal_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal] CHECK CONSTRAINT [FK_Eleccion_Cargo_Municipal_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Municipal_Municipio]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal]  WITH NOCHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Municipal_Municipio] FOREIGN KEY([idMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal] CHECK CONSTRAINT [FK_Eleccion_Cargo_Municipal_Municipio]
GO
/****** Object:  ForeignKey [FK_Camion_Centro_Camion]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Camion_Centro]  WITH NOCHECK ADD  CONSTRAINT [FK_Camion_Centro_Camion] FOREIGN KEY([Patente])
REFERENCES [dbo].[Camion] ([Patente])
GO
ALTER TABLE [dbo].[Camion_Centro] CHECK CONSTRAINT [FK_Camion_Centro_Camion]
GO
/****** Object:  ForeignKey [FK_Camion_Centro_Centro]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Camion_Centro]  WITH NOCHECK ADD  CONSTRAINT [FK_Camion_Centro_Centro] FOREIGN KEY([idCentro])
REFERENCES [dbo].[Centro] ([idCentro])
GO
ALTER TABLE [dbo].[Camion_Centro] CHECK CONSTRAINT [FK_Camion_Centro_Centro]
GO
/****** Object:  ForeignKey [FK_Fiscales_Ciudadano]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Fiscales]  WITH NOCHECK ADD  CONSTRAINT [FK_Fiscales_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Fiscales] CHECK CONSTRAINT [FK_Fiscales_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Fiscales_Mesa]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Fiscales]  WITH NOCHECK ADD  CONSTRAINT [FK_Fiscales_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Fiscales] CHECK CONSTRAINT [FK_Fiscales_Mesa]
GO
/****** Object:  ForeignKey [FK_Padron_Ciudadano]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Padron]  WITH NOCHECK ADD  CONSTRAINT [FK_Padron_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Padron] CHECK CONSTRAINT [FK_Padron_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Padron_Mesa]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Padron]  WITH NOCHECK ADD  CONSTRAINT [FK_Padron_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Padron] CHECK CONSTRAINT [FK_Padron_Mesa]
GO
/****** Object:  ForeignKey [FK_Voto_Mesa]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Voto]  WITH NOCHECK ADD  CONSTRAINT [FK_Voto_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Voto] CHECK CONSTRAINT [FK_Voto_Mesa]
GO
/****** Object:  ForeignKey [FK_Voto_A_Candidato_Candidato]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Voto_A_Candidato]  WITH NOCHECK ADD  CONSTRAINT [FK_Voto_A_Candidato_Candidato] FOREIGN KEY([DNI])
REFERENCES [dbo].[Candidato] ([DNI])
GO
ALTER TABLE [dbo].[Voto_A_Candidato] CHECK CONSTRAINT [FK_Voto_A_Candidato_Candidato]
GO
/****** Object:  ForeignKey [FK_Voto_A_Candidato_Voto]    Script Date: 07/02/2015 15:17:17 ******/
ALTER TABLE [dbo].[Voto_A_Candidato]  WITH NOCHECK ADD  CONSTRAINT [FK_Voto_A_Candidato_Voto] FOREIGN KEY([idVoto])
REFERENCES [dbo].[Voto] ([idVoto])
GO
ALTER TABLE [dbo].[Voto_A_Candidato] CHECK CONSTRAINT [FK_Voto_A_Candidato_Voto]
GO
