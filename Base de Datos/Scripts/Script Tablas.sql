USE [Ventas]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 03/20/2012 16:20:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[usuarioCodigo] [int] NULL,
	[usuarioUser] [varchar](20) NULL,
	[usuarioPassword] [varchar](20) NULL,
	[usuarioEstado] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoTarifa]    Script Date: 03/20/2012 16:20:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoTarifa](
	[tipoTarifaCodigo] [int] NOT NULL,
	[tipoTarifaNombre] [varchar](100) NULL,
	[tipoTarifaEstado] [char](1) NULL,
 CONSTRAINT [PK_TipoTarifa] PRIMARY KEY CLUSTERED 
(
	[tipoTarifaCodigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoPauta]    Script Date: 03/20/2012 16:20:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoPauta](
	[tipoPautaCodigo] [int] NULL,
	[tipoPautaNombre] [varchar](25) NULL,
	[tipoPautaEstado] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tarifa]    Script Date: 03/20/2012 16:20:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Tarifa](
	[tarifaCodigo] [int] NOT NULL,
	[tarifaCodigoRadio] [int] NULL,
	[tarifaCodigoTipoPauta] [int] NULL,
	[tarifaPrecio] [numeric](10, 2) NULL,
	[tarifaBloque] [varchar](200) NULL,
	[tarifaEstado] [char](1) NULL,
 CONSTRAINT [PK_Tarifa] PRIMARY KEY CLUSTERED 
(
	[tarifaCodigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Radio]    Script Date: 03/20/2012 16:20:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Radio](
	[radioCodigo] [int] NOT NULL,
	[radioNombreComercial] [varchar](120) NULL,
	[radioEstado] [char](1) NULL,
 CONSTRAINT [PK_Radio] PRIMARY KEY CLUSTERED 
(
	[radioCodigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 03/20/2012 16:20:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[empresaCodigo] [int] NULL,
	[empresaRUC] [varchar](20) NULL,
	[empresaNombreComercial] [varchar](50) NULL,
	[empresaDireccion] [varchar](50) NULL,
	[empresaTelefono] [varchar](50) NULL,
	[empresaEstado] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contribuyentes]    Script Date: 03/20/2012 16:20:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[contribuyentes](
	[Ruc] [varchar](11) NOT NULL,
	[RazonSocial] [varchar](100) NULL,
	[FInscripcion] [varchar](10) NULL,
	[Estado] [varchar](20) NULL,
	[Condicion] [varchar](20) NULL,
	[Direccion] [varchar](100) NULL,
	[Telefono] [varchar](9) NULL,
	[Sistema] [varchar](20) NULL,
 CONSTRAINT [PK_Contribuyentes] PRIMARY KEY CLUSTERED 
(
	[Ruc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
