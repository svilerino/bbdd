USE [master]
GO
/****** Object:  Database [bbdd_tp1]    Script Date: 05/15/2015 17:18:36 ******/
CREATE DATABASE [bbdd_tp1] ON  PRIMARY 
( NAME = N'bbdd_tp1', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008\MSSQL\DATA\bbdd_tp1.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'bbdd_tp1_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008\MSSQL\DATA\bbdd_tp1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [bbdd_tp1] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bbdd_tp1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bbdd_tp1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [bbdd_tp1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [bbdd_tp1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [bbdd_tp1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [bbdd_tp1] SET ARITHABORT OFF
GO
ALTER DATABASE [bbdd_tp1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [bbdd_tp1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [bbdd_tp1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [bbdd_tp1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [bbdd_tp1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [bbdd_tp1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [bbdd_tp1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [bbdd_tp1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [bbdd_tp1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [bbdd_tp1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [bbdd_tp1] SET  DISABLE_BROKER
GO
ALTER DATABASE [bbdd_tp1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [bbdd_tp1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [bbdd_tp1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [bbdd_tp1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [bbdd_tp1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [bbdd_tp1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [bbdd_tp1] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [bbdd_tp1] SET  READ_WRITE
GO
ALTER DATABASE [bbdd_tp1] SET RECOVERY SIMPLE
GO
ALTER DATABASE [bbdd_tp1] SET  MULTI_USER
GO
ALTER DATABASE [bbdd_tp1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [bbdd_tp1] SET DB_CHAINING OFF
GO
USE [bbdd_tp1]
GO
/****** Object:  Table [dbo].[Voto]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Maquina]    Script Date: 05/15/2015 17:18:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquina](
	[idMaquina] [int] NOT NULL,
	[idMesa] [int] NOT NULL,
	[idTecnico] [int] NOT NULL,
 CONSTRAINT [PK_Maquina] PRIMARY KEY CLUSTERED 
(
	[idMaquina] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fiscales]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Ciudadano]    Script Date: 05/15/2015 17:18:37 ******/
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
	[idMesa] [int] NOT NULL,
	[selloVoto] [timestamp] NULL,
 CONSTRAINT [PK_Ciudadano] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Voto_A_Candidato]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Candidato]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Camion]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Postulaciones]    Script Date: 05/15/2015 17:18:37 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eleccion]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Mesa]    Script Date: 05/15/2015 17:18:37 ******/
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
 CONSTRAINT [PK_Mesa] PRIMARY KEY CLUSTERED 
(
	[idMesa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Camion_Centro]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Centro]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Provincia]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Fiscal_Partidario]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Partido_Politico]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Eleccion_Cargo_Legislativo]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Municipio]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Eleccion_Consulta_Popular]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Eleccion_Cargo_Provincial]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  Table [dbo].[Eleccion_Cargo_Municipal]    Script Date: 05/15/2015 17:18:37 ******/
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
/****** Object:  ForeignKey [FK_Voto_Mesa]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Voto]  WITH CHECK ADD  CONSTRAINT [FK_Voto_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Voto] CHECK CONSTRAINT [FK_Voto_Mesa]
GO
/****** Object:  ForeignKey [FK_Maquina_Ciudadano_Tecnico]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Maquina]  WITH CHECK ADD  CONSTRAINT [FK_Maquina_Ciudadano_Tecnico] FOREIGN KEY([idTecnico])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Maquina] CHECK CONSTRAINT [FK_Maquina_Ciudadano_Tecnico]
GO
/****** Object:  ForeignKey [FK_Maquina_Mesa]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Maquina]  WITH CHECK ADD  CONSTRAINT [FK_Maquina_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Maquina] CHECK CONSTRAINT [FK_Maquina_Mesa]
GO
/****** Object:  ForeignKey [FK_Fiscales_Ciudadano]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Fiscales]  WITH CHECK ADD  CONSTRAINT [FK_Fiscales_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Fiscales] CHECK CONSTRAINT [FK_Fiscales_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Fiscales_Mesa]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Fiscales]  WITH CHECK ADD  CONSTRAINT [FK_Fiscales_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Fiscales] CHECK CONSTRAINT [FK_Fiscales_Mesa]
GO
/****** Object:  ForeignKey [FK_Ciudadano_Mesa_Padron]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Ciudadano]  WITH CHECK ADD  CONSTRAINT [FK_Ciudadano_Mesa_Padron] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Ciudadano] CHECK CONSTRAINT [FK_Ciudadano_Mesa_Padron]
GO
/****** Object:  ForeignKey [FK_Voto_A_Candidato_Candidato]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Voto_A_Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Voto_A_Candidato_Candidato] FOREIGN KEY([DNI])
REFERENCES [dbo].[Candidato] ([DNI])
GO
ALTER TABLE [dbo].[Voto_A_Candidato] CHECK CONSTRAINT [FK_Voto_A_Candidato_Candidato]
GO
/****** Object:  ForeignKey [FK_Voto_A_Candidato_Voto]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Voto_A_Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Voto_A_Candidato_Voto] FOREIGN KEY([idVoto])
REFERENCES [dbo].[Voto] ([idVoto])
GO
ALTER TABLE [dbo].[Voto_A_Candidato] CHECK CONSTRAINT [FK_Voto_A_Candidato_Voto]
GO
/****** Object:  ForeignKey [FK_Candidato_Ciudadano]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Camion_Ciudadano_Conductor]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Camion]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Ciudadano_Conductor] FOREIGN KEY([idConductor])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Camion] CHECK CONSTRAINT [FK_Camion_Ciudadano_Conductor]
GO
/****** Object:  ForeignKey [FK_Postulaciones_Candidato]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Postulaciones]  WITH CHECK ADD  CONSTRAINT [FK_Postulaciones_Candidato] FOREIGN KEY([DNI])
REFERENCES [dbo].[Candidato] ([DNI])
GO
ALTER TABLE [dbo].[Postulaciones] CHECK CONSTRAINT [FK_Postulaciones_Candidato]
GO
/****** Object:  ForeignKey [FK_Postulaciones_Eleccion]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Postulaciones]  WITH CHECK ADD  CONSTRAINT [FK_Postulaciones_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Postulaciones] CHECK CONSTRAINT [FK_Postulaciones_Eleccion]
GO
/****** Object:  ForeignKey [FK_Mesa_Centro]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Centro] FOREIGN KEY([idCentro])
REFERENCES [dbo].[Centro] ([idCentro])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Centro]
GO
/****** Object:  ForeignKey [FK_Mesa_Ciudadano_Presidente]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Ciudadano_Presidente] FOREIGN KEY([idPresidente])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Ciudadano_Presidente]
GO
/****** Object:  ForeignKey [FK_Mesa_Ciudadano_VicePresidente]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Ciudadano_VicePresidente] FOREIGN KEY([idVicePresidente])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Ciudadano_VicePresidente]
GO
/****** Object:  ForeignKey [FK_Mesa_Eleccion]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Eleccion]
GO
/****** Object:  ForeignKey [FK_Camion_Centro_Camion]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Camion_Centro]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Centro_Camion] FOREIGN KEY([Patente])
REFERENCES [dbo].[Camion] ([Patente])
GO
ALTER TABLE [dbo].[Camion_Centro] CHECK CONSTRAINT [FK_Camion_Centro_Camion]
GO
/****** Object:  ForeignKey [FK_Camion_Centro_Centro]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Camion_Centro]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Centro_Centro] FOREIGN KEY([idCentro])
REFERENCES [dbo].[Centro] ([idCentro])
GO
ALTER TABLE [dbo].[Camion_Centro] CHECK CONSTRAINT [FK_Camion_Centro_Centro]
GO
/****** Object:  ForeignKey [FK_Fiscal_Partidario_Ciudadano]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Fiscal_Partidario]  WITH CHECK ADD  CONSTRAINT [FK_Fiscal_Partidario_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Fiscal_Partidario] CHECK CONSTRAINT [FK_Fiscal_Partidario_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Fiscal_Partidario_Partido_Politico]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Fiscal_Partidario]  WITH CHECK ADD  CONSTRAINT [FK_Fiscal_Partidario_Partido_Politico] FOREIGN KEY([idPartido])
REFERENCES [dbo].[Partido_Politico] ([idPartido])
GO
ALTER TABLE [dbo].[Fiscal_Partidario] CHECK CONSTRAINT [FK_Fiscal_Partidario_Partido_Politico]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Legislativo_Eleccion]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo] CHECK CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Legislativo_Provincia]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo] CHECK CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Provincia]
GO
/****** Object:  ForeignKey [FK_Municipio_Provincia]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Provincia]
GO
/****** Object:  ForeignKey [FK_Eleccion_Consulta_Popular_Eleccion]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Eleccion_Consulta_Popular]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Consulta_Popular_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Consulta_Popular] CHECK CONSTRAINT [FK_Eleccion_Consulta_Popular_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Provincial_Eleccion]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Provincial_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial] CHECK CONSTRAINT [FK_Eleccion_Cargo_Provincial_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Provincial_Provincia]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Provincial_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial] CHECK CONSTRAINT [FK_Eleccion_Cargo_Provincial_Provincia]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Municipal_Eleccion]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Municipal_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal] CHECK CONSTRAINT [FK_Eleccion_Cargo_Municipal_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Municipal_Municipio]    Script Date: 05/15/2015 17:18:37 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Municipal_Municipio] FOREIGN KEY([idMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal] CHECK CONSTRAINT [FK_Eleccion_Cargo_Municipal_Municipio]
GO
