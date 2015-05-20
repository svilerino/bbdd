USE [master]
GO
USE [bbdd_tp1]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Eleccion]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Ciudadano]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Centro]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Partido_Politico]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Municipio]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Camion]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Maquina]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Fiscal_Partidario]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Eleccion_Consulta_Popular]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Eleccion_Cargo_Provincial]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Candidato]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Eleccion_Cargo_Legislativo]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Postulaciones]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Camion_Centro]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Eleccion_Cargo_Municipal]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Mesa]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Padron]    Script Date: 05/19/2015 15:49:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Padron](
	[DNI] [int] NOT NULL,
	[idMesa] [int] NOT NULL,
	[selloVoto] [timestamp] NULL,
 CONSTRAINT [PK_Padron] PRIMARY KEY CLUSTERED 
(
	[DNI] ASC,
	[idMesa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fiscales]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Voto]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  Table [dbo].[Voto_A_Candidato]    Script Date: 05/19/2015 15:49:03 ******/
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
/****** Object:  ForeignKey [FK_Municipio_Provincia]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Provincia]
GO
/****** Object:  ForeignKey [FK_Camion_Ciudadano_Conductor]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Camion]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Ciudadano_Conductor] FOREIGN KEY([idConductor])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Camion] CHECK CONSTRAINT [FK_Camion_Ciudadano_Conductor]
GO
/****** Object:  ForeignKey [FK_Maquina_Ciudadano_Tecnico]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Maquina]  WITH CHECK ADD  CONSTRAINT [FK_Maquina_Ciudadano_Tecnico] FOREIGN KEY([idTecnico])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Maquina] CHECK CONSTRAINT [FK_Maquina_Ciudadano_Tecnico]
GO
/****** Object:  ForeignKey [FK_Fiscal_Partidario_Ciudadano]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Fiscal_Partidario]  WITH CHECK ADD  CONSTRAINT [FK_Fiscal_Partidario_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Fiscal_Partidario] CHECK CONSTRAINT [FK_Fiscal_Partidario_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Fiscal_Partidario_Partido_Politico]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Fiscal_Partidario]  WITH CHECK ADD  CONSTRAINT [FK_Fiscal_Partidario_Partido_Politico] FOREIGN KEY([idPartido])
REFERENCES [dbo].[Partido_Politico] ([idPartido])
GO
ALTER TABLE [dbo].[Fiscal_Partidario] CHECK CONSTRAINT [FK_Fiscal_Partidario_Partido_Politico]
GO
/****** Object:  ForeignKey [FK_Eleccion_Consulta_Popular_Eleccion]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Eleccion_Consulta_Popular]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Consulta_Popular_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Consulta_Popular] CHECK CONSTRAINT [FK_Eleccion_Consulta_Popular_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Provincial_Eleccion]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Provincial_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial] CHECK CONSTRAINT [FK_Eleccion_Cargo_Provincial_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Provincial_Provincia]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Provincial_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Provincial] CHECK CONSTRAINT [FK_Eleccion_Cargo_Provincial_Provincia]
GO
/****** Object:  ForeignKey [FK_Candidato_Ciudadano]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Candidato_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Candidato] CHECK CONSTRAINT [FK_Candidato_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Legislativo_Eleccion]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo] CHECK CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Legislativo_Provincia]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([idProvincia])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Legislativo] CHECK CONSTRAINT [FK_Eleccion_Cargo_Legislativo_Provincia]
GO
/****** Object:  ForeignKey [FK_Postulaciones_Candidato]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Postulaciones]  WITH CHECK ADD  CONSTRAINT [FK_Postulaciones_Candidato] FOREIGN KEY([DNI])
REFERENCES [dbo].[Candidato] ([DNI])
GO
ALTER TABLE [dbo].[Postulaciones] CHECK CONSTRAINT [FK_Postulaciones_Candidato]
GO
/****** Object:  ForeignKey [FK_Postulaciones_Eleccion]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Postulaciones]  WITH CHECK ADD  CONSTRAINT [FK_Postulaciones_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Postulaciones] CHECK CONSTRAINT [FK_Postulaciones_Eleccion]
GO
/****** Object:  ForeignKey [FK_Postulaciones_Partido_Politico]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Postulaciones]  WITH CHECK ADD  CONSTRAINT [FK_Postulaciones_Partido_Politico] FOREIGN KEY([idPartido])
REFERENCES [dbo].[Partido_Politico] ([idPartido])
GO
ALTER TABLE [dbo].[Postulaciones] CHECK CONSTRAINT [FK_Postulaciones_Partido_Politico]
GO
/****** Object:  ForeignKey [FK_Camion_Centro_Camion]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Camion_Centro]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Centro_Camion] FOREIGN KEY([Patente])
REFERENCES [dbo].[Camion] ([Patente])
GO
ALTER TABLE [dbo].[Camion_Centro] CHECK CONSTRAINT [FK_Camion_Centro_Camion]
GO
/****** Object:  ForeignKey [FK_Camion_Centro_Centro]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Camion_Centro]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Centro_Centro] FOREIGN KEY([idCentro])
REFERENCES [dbo].[Centro] ([idCentro])
GO
ALTER TABLE [dbo].[Camion_Centro] CHECK CONSTRAINT [FK_Camion_Centro_Centro]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Municipal_Eleccion]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Municipal_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal] CHECK CONSTRAINT [FK_Eleccion_Cargo_Municipal_Eleccion]
GO
/****** Object:  ForeignKey [FK_Eleccion_Cargo_Municipal_Municipio]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal]  WITH CHECK ADD  CONSTRAINT [FK_Eleccion_Cargo_Municipal_Municipio] FOREIGN KEY([idMunicipio])
REFERENCES [dbo].[Municipio] ([idMunicipio])
GO
ALTER TABLE [dbo].[Eleccion_Cargo_Municipal] CHECK CONSTRAINT [FK_Eleccion_Cargo_Municipal_Municipio]
GO
/****** Object:  ForeignKey [FK_Mesa_Centro]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Centro] FOREIGN KEY([idCentro])
REFERENCES [dbo].[Centro] ([idCentro])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Centro]
GO
/****** Object:  ForeignKey [FK_Mesa_Ciudadano_Presidente]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Ciudadano_Presidente] FOREIGN KEY([idPresidente])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Ciudadano_Presidente]
GO
/****** Object:  ForeignKey [FK_Mesa_Ciudadano_VicePresidente]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Ciudadano_VicePresidente] FOREIGN KEY([idVicePresidente])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Ciudadano_VicePresidente]
GO
/****** Object:  ForeignKey [FK_Mesa_Eleccion]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Eleccion] FOREIGN KEY([idEleccion])
REFERENCES [dbo].[Eleccion] ([idEleccion])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Eleccion]
GO
/****** Object:  ForeignKey [FK_Mesa_Maquina]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Mesa]  WITH CHECK ADD  CONSTRAINT [FK_Mesa_Maquina] FOREIGN KEY([idMaquina])
REFERENCES [dbo].[Maquina] ([idMaquina])
GO
ALTER TABLE [dbo].[Mesa] CHECK CONSTRAINT [FK_Mesa_Maquina]
GO
/****** Object:  ForeignKey [FK_Padron_Ciudadano]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Padron]  WITH CHECK ADD  CONSTRAINT [FK_Padron_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Padron] CHECK CONSTRAINT [FK_Padron_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Padron_Mesa]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Padron]  WITH CHECK ADD  CONSTRAINT [FK_Padron_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Padron] CHECK CONSTRAINT [FK_Padron_Mesa]
GO
/****** Object:  ForeignKey [FK_Fiscales_Ciudadano]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Fiscales]  WITH CHECK ADD  CONSTRAINT [FK_Fiscales_Ciudadano] FOREIGN KEY([DNI])
REFERENCES [dbo].[Ciudadano] ([DNI])
GO
ALTER TABLE [dbo].[Fiscales] CHECK CONSTRAINT [FK_Fiscales_Ciudadano]
GO
/****** Object:  ForeignKey [FK_Fiscales_Mesa]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Fiscales]  WITH CHECK ADD  CONSTRAINT [FK_Fiscales_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Fiscales] CHECK CONSTRAINT [FK_Fiscales_Mesa]
GO
/****** Object:  ForeignKey [FK_Voto_Mesa]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Voto]  WITH CHECK ADD  CONSTRAINT [FK_Voto_Mesa] FOREIGN KEY([idMesa])
REFERENCES [dbo].[Mesa] ([idMesa])
GO
ALTER TABLE [dbo].[Voto] CHECK CONSTRAINT [FK_Voto_Mesa]
GO
/****** Object:  ForeignKey [FK_Voto_A_Candidato_Candidato]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Voto_A_Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Voto_A_Candidato_Candidato] FOREIGN KEY([DNI])
REFERENCES [dbo].[Candidato] ([DNI])
GO
ALTER TABLE [dbo].[Voto_A_Candidato] CHECK CONSTRAINT [FK_Voto_A_Candidato_Candidato]
GO
/****** Object:  ForeignKey [FK_Voto_A_Candidato_Voto]    Script Date: 05/19/2015 15:49:03 ******/
ALTER TABLE [dbo].[Voto_A_Candidato]  WITH CHECK ADD  CONSTRAINT [FK_Voto_A_Candidato_Voto] FOREIGN KEY([idVoto])
REFERENCES [dbo].[Voto] ([idVoto])
GO
ALTER TABLE [dbo].[Voto_A_Candidato] CHECK CONSTRAINT [FK_Voto_A_Candidato_Voto]
GO

-- Checks, Triggers

ALTER TABLE [dbo].[Eleccion]  WITH CHECK ADD  CONSTRAINT [CK_Eleccion_TipoValido] CHECK  (([tipo]='Consulta Popular' OR [tipo]='Cargo Federal' OR [tipo]='Cargo Municipal' OR [tipo]='Cargo Provincial' OR [tipo]='Cargo Legislativo'))
GO

ALTER TABLE [dbo].[Eleccion] CHECK CONSTRAINT [CK_Eleccion_TipoValido]
GO


ALTER TABLE [dbo].[Voto]  WITH CHECK ADD  CONSTRAINT [CK_Voto_TipoValido] CHECK  (([tipo]='A Plesbicito No' OR [tipo]='A Plesbicito Si' OR [tipo]='A Candidato'))
GO

ALTER TABLE [dbo].[Voto] CHECK CONSTRAINT [CK_Voto_TipoValido]
GO


/****** Object:  Trigger [dbo].[trg_check_votoTipoEleccion]    Script Date: 05/20/2015 12:51:46 ******/
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


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [dbo].[trg_check_Candidatos_Unicos_Por_Partido_Politico]
   ON  [dbo].[Postulaciones]
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;	
	-- Consigo el id de la eleccion en curso
	-- Consigo el id del partido politico del candidato a insertar
	-- Consigo el DNI del candidato a insertar
	DECLARE @idEleccion int
	DECLARE @idPartido int
	DECLARE @DNI int
	SELECT @idEleccion = i.idEleccion, @idPartido = i.idPartido , @DNI = i.DNI FROM inserted i
	
	-- Me fijo que esta eleccion no tenga candidatos del partido politico del candidato a insertar(Salvo el que ya inserte)
	IF EXISTS (SELECT * FROM Postulaciones WHERE idEleccion = @idEleccion AND idPartido = @idPartido AND DNI <> @DNI)
	BEGIN
		RAISERROR('Ya existe un candidato para ese partido politico en esta eleccion.', 0, 0)
		ROLLBACK TRANSACTION;
		RETURN;
	END
	
    
END

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

