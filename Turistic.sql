USE [Turistic]
GO
/****** Object:  Table [dbo].[sitios]    Script Date: 14/11/2014 17:46:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sitios](
	[idsitio] [bigint] NOT NULL,
	[latitud] [float] NULL,
	[longitud] [float] NULL,
	[descripcion] [varchar](max) NULL,
	[lugarcercano] [varchar](max) NULL,
 CONSTRAINT [PK_sitios] PRIMARY KEY CLUSTERED 
(
	[idsitio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (1, 10986167, -74778813, N' Museo del caribe            ', N' Paseo Bolivar, Fedecafé, Alcaldia de Barranquilla, Shopping Center, Gobernacion del Atlantico, Avenida del rio')
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (2, 1098582, -74776951, N' Intendencia Fluvial          ', N' Paseo Bolivar, Fedecafé, Alcaldia de Barranquilla, Shopping Center, Plaza de la aduana, Avenida del rio')
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (3, 11013513, -7482706, N' Ccial. Buenavista          ', N' Home center sede norte, Pricemart, Tito''s Bolos, Hotel Dann Carlton, Makro')
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (4, 10988266, -74790199, N' Catedral Metropolitana      ', N' Ccial Portal del prado, Plaza de la paz, Banco de la Republica, Cancha Wembley, Colegio del Carmen, Cunit, Comfamiliar sede centro, Home center sede centro')
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (5, 10927012, -7479975, N' Estadio Metropolitano       ', N' Ccial Metropolitano, Ccial Metrocentro, Clinica de la policia, Terminal de Transportes, ')
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (6, 10994891, -7480634, N' Plaza de los músicos         ', N' Estadio Romelio Martinez, Estadio Elias Chewing, Estación de transmetro Joe Arroyo, La troja, Clinica del Norte, Emisora Atlantico, Plaza roja')
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (7, 10993042, -74787109, N' Casa del carnaval            ', N' Estadio Tomas Arrieta, CUC, Ccial Portal del prado, Home center sede centro')
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (8, 10993121, -74789844, N' Teatro Amira de la Rosa      ', N' Estadio Tomas Arrieta, CUC, Ccial Portal del prado, Universidad Simon Bolivar, Instituto Meyer, Banco Davivienda, Segunda Brigada')
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (9, 11051958, -74835249, N' Bocas de ceniza              ', N' Avenida del rio, Monomeros, Argos, Las Flores, ')
INSERT [dbo].[sitios] ([idsitio], [latitud], [longitud], [descripcion], [lugarcercano]) VALUES (10, 11010959, -74798248, N' Zoologico de Barranquilla   ', N' Almacen Jumbo, Chevrolet Country, Almacen Exito, Muebles Jamar, Hotel Estelar, Home mart, Batallon Paraiso')
