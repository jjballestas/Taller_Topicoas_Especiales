USE [Turistic]
GO
/****** Object:  Table [dbo].[sitios]    Script Date: 08/11/2014 15:00:54 ******/
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
