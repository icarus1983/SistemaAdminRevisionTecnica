USE [DBIDIA]
GO
/****** Object:  Table [dbo].[atencionVehiculo]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[atencionVehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[propietarioId] [int] NOT NULL,
	[vehiculoTipoId] [int] NOT NULL,
	[PatenteVehiculo] [varchar](20) NOT NULL,
	[SelloId] [int] NOT NULL,
	[marcaId] [int] NOT NULL,
	[modeloId] [int] NOT NULL,
	[año] [int] NOT NULL,
	[cilindradaVehiculo] [int] NOT NULL,
	[nroMotor] [int] NOT NULL,
	[nroChasis] [varchar](50) NOT NULL,
	[nroPuertas] [int] NOT NULL,
	[transmisionId] [int] NOT NULL,
	[combustibleId] [int] NOT NULL,
	[traccionId] [int] NOT NULL,
	[servicioId] [int] NOT NULL,
 CONSTRAINT [PK_atencionVehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BoletaRevision]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BoletaRevision](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroAtencionId] [int] NOT NULL,
	[SucursalId] [int] NOT NULL,
	[vehiculoPatente] [varchar](20) NOT NULL,
	[formaPagoId] [int] NOT NULL,
	[ServicioId] [int] NOT NULL,
 CONSTRAINT [PK_BoletaRevision] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CertificadoRevision]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificadoRevision](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[atencionNroId] [int] NOT NULL,
	[estadoRevisionId] [int] NOT NULL,
	[nroCertMTT] [int] NOT NULL,
	[VehiculoPatente] [varchar](20) NOT NULL,
 CONSTRAINT [PK_CertificadoRevision] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoCiudadMTT] [int] NOT NULL,
	[regionId] [int] NOT NULL,
	[nombreCiudad] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoRevision]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoRevision](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroAtencionId] [int] NOT NULL,
	[estadoRevisión] [varchar](20) NOT NULL,
 CONSTRAINT [PK_EstadoRevision] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jefatura]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jefatura](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipoJefatura] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Jefatura] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarcaVehiculo]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarcaVehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoMarcaMTT] [int] NOT NULL,
	[nombreMarca] [varchar](40) NOT NULL,
 CONSTRAINT [PK_MarcaVehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModeloVehiculo]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModeloVehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoModeloMTT] [int] NOT NULL,
	[nombreModelo] [varchar](30) NOT NULL,
 CONSTRAINT [PK_ModeloVehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[perfil] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropietarioVehiculo]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropietarioVehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[rutPropietario] [varchar](25) NOT NULL,
	[nombresPropietario] [varchar](25) NOT NULL,
	[propietarioApellidoPaterno] [varchar](20) NOT NULL,
	[propietarioApellidoMaterno] [varchar](20) NOT NULL,
	[ciudadId] [int] NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
	[correo] [varchar](40) NOT NULL,
 CONSTRAINT [PK_PropietarioVehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoRegionMTT] [int] NOT NULL,
	[nombreRegion] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResponsablePago]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResponsablePago](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NroAtencionId] [int] NOT NULL,
	[rutCliente] [varchar](20) NOT NULL,
	[clienteNombres] [varchar](30) NOT NULL,
	[clienteApellidoPaterno] [varchar](20) NOT NULL,
	[cleinteApellidoMaterno] [varchar](20) NOT NULL,
	[telefono] [int] NOT NULL,
	[email] [varchar](40) NOT NULL,
	[dirección] [varchar](60) NOT NULL,
 CONSTRAINT [PK_ResponsablePago] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadoEstacionGases]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadoEstacionGases](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroAtencionId] [int] NOT NULL,
	[vehiculoPatente] [varchar](20) NOT NULL,
	[resultadoOpacidad] [int] NOT NULL,
	[resultadoCo2] [int] NOT NULL,
	[resultadoHc] [int] NOT NULL,
	[resultadoNo] [int] NOT NULL,
	[resultadoNoCo2] [int] NOT NULL,
 CONSTRAINT [PK_ResultadoEstacionGases] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadosEstacionFrenometro]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadosEstacionFrenometro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroAtencionId] [int] NOT NULL,
	[vechiculoPatente] [varchar](10) NOT NULL,
	[resultadoAlineacion] [int] NOT NULL,
	[resultadoSuspencion] [int] NOT NULL,
	[resultadoFrenoIzquierdo] [int] NOT NULL,
	[resultadoFrenoDerecho] [int] NOT NULL,
	[resultadoFrenoEmergencia] [int] NOT NULL,
	[resultadoLucesAltas] [int] NOT NULL,
	[resultadoLucesBajas] [int] NOT NULL,
 CONSTRAINT [PK_ResultadosEstacionFrenometro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultadosEstacionVisuales]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultadosEstacionVisuales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroAtencionId] [int] NOT NULL,
	[vehiculoPatente] [varchar](20) NOT NULL,
	[comprobacionNroMotor] [varchar](20) NOT NULL,
	[comprobacionNroChazis] [varchar](20) NOT NULL,
	[estadoLuzFreno] [varchar](20) NOT NULL,
	[estadoTercerLuzFreno] [varchar](20) NOT NULL,
	[estadoLuzVirage] [varchar](20) NOT NULL,
	[estadoLuzReversa] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ResultadosEstacionVisuales] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelloVehiculo]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelloVehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[selloCodigoMTT] [int] NOT NULL,
	[sello] [varchar](20) NOT NULL,
 CONSTRAINT [PK_SelloVehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoServicioMtt] [int] NOT NULL,
	[DescripciónServicio] [varchar](50) NOT NULL,
	[valorServicio] [int] NOT NULL,
 CONSTRAINT [PK_Servicios_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sucursal]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sucursal](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoSucursalMTT] [varchar](30) NOT NULL,
	[NombreSucursal] [varchar](30) NOT NULL,
	[ciudadNombre] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCombustible]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCombustible](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoCombustibleMTT] [int] NOT NULL,
	[tipoCombustible] [varchar](15) NOT NULL,
 CONSTRAINT [PK_TipoCombustible] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoPagos]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoPagos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipoPago] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TipoPagos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoVehiculo]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoVehiculo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoTipoVehiculoMTT] [int] NOT NULL,
	[tipoVehiculo] [varchar](30) NOT NULL,
 CONSTRAINT [PK_TipoVehiculo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Traccion]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Traccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[traccionCodigoMTT] [int] NOT NULL,
	[tipoTraccion] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Traccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transmision]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transmision](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[codigoTransmisionMTT] [int] NOT NULL,
	[tipoTransmision] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Transmision] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrazaWebServiceMTT]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrazaWebServiceMTT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroAtencionId] [int] NOT NULL,
	[respuestaWebService] [varchar](50) NOT NULL,
	[fechaHoraRespuesta] [datetime] NOT NULL,
 CONSTRAINT [PK_TrazaWebServiceMTT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/12/2020 09:56:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](30) NOT NULL,
	[apellidoPaterno] [varchar](30) NOT NULL,
	[apellidoMaterno] [varchar](30) NOT NULL,
	[mail] [varchar](30) NOT NULL,
	[ciudadId] [int] NOT NULL,
	[perfilId] [int] NOT NULL,
	[jefaturaId] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[atencionVehiculo] ON 

INSERT [dbo].[atencionVehiculo] ([id], [propietarioId], [vehiculoTipoId], [PatenteVehiculo], [SelloId], [marcaId], [modeloId], [año], [cilindradaVehiculo], [nroMotor], [nroChasis], [nroPuertas], [transmisionId], [combustibleId], [traccionId], [servicioId]) VALUES (9, 19, 5, N'KX4R34-1', 3, 3, 2, 2020, 3000, 510338, N'2H2XA59BWDY987665', 4, 2, 50, 3, 7)
SET IDENTITY_INSERT [dbo].[atencionVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[Ciudad] ON 

INSERT [dbo].[Ciudad] ([id], [codigoCiudadMTT], [regionId], [nombreCiudad]) VALUES (1, 10, 5, N'Valparaiso')
INSERT [dbo].[Ciudad] ([id], [codigoCiudadMTT], [regionId], [nombreCiudad]) VALUES (3, 30, 5, N'Quilpue')
INSERT [dbo].[Ciudad] ([id], [codigoCiudadMTT], [regionId], [nombreCiudad]) VALUES (4, 10, 5, N'Curauma')
INSERT [dbo].[Ciudad] ([id], [codigoCiudadMTT], [regionId], [nombreCiudad]) VALUES (5, 20, 5, N'Vina Del Mar')
INSERT [dbo].[Ciudad] ([id], [codigoCiudadMTT], [regionId], [nombreCiudad]) VALUES (6, 30, 5, N'Quintero')
INSERT [dbo].[Ciudad] ([id], [codigoCiudadMTT], [regionId], [nombreCiudad]) VALUES (7, 40, 5, N'Villa Alemana')
SET IDENTITY_INSERT [dbo].[Ciudad] OFF
GO
SET IDENTITY_INSERT [dbo].[Jefatura] ON 

INSERT [dbo].[Jefatura] ([id], [tipoJefatura]) VALUES (1, N'Gerencia')
SET IDENTITY_INSERT [dbo].[Jefatura] OFF
GO
SET IDENTITY_INSERT [dbo].[MarcaVehiculo] ON 

INSERT [dbo].[MarcaVehiculo] ([id], [codigoMarcaMTT], [nombreMarca]) VALUES (1, 1, N'Chevrolet')
INSERT [dbo].[MarcaVehiculo] ([id], [codigoMarcaMTT], [nombreMarca]) VALUES (2, 2, N'KIA')
INSERT [dbo].[MarcaVehiculo] ([id], [codigoMarcaMTT], [nombreMarca]) VALUES (3, 3, N'PEUGEOT')
INSERT [dbo].[MarcaVehiculo] ([id], [codigoMarcaMTT], [nombreMarca]) VALUES (4, 4, N'RENAULT')
SET IDENTITY_INSERT [dbo].[MarcaVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[ModeloVehiculo] ON 

INSERT [dbo].[ModeloVehiculo] ([id], [codigoModeloMTT], [nombreModelo]) VALUES (1, 33, N'Sonic LT')
INSERT [dbo].[ModeloVehiculo] ([id], [codigoModeloMTT], [nombreModelo]) VALUES (2, 34, N'206')
INSERT [dbo].[ModeloVehiculo] ([id], [codigoModeloMTT], [nombreModelo]) VALUES (3, 35, N'Rio 5')
INSERT [dbo].[ModeloVehiculo] ([id], [codigoModeloMTT], [nombreModelo]) VALUES (4, 36, N'Clio AT')
SET IDENTITY_INSERT [dbo].[ModeloVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfiles] ON 

INSERT [dbo].[Perfiles] ([id], [perfil]) VALUES (1, N'Cajero')
INSERT [dbo].[Perfiles] ([id], [perfil]) VALUES (2, N'Evaluador')
INSERT [dbo].[Perfiles] ([id], [perfil]) VALUES (3, N'Gerencia')
INSERT [dbo].[Perfiles] ([id], [perfil]) VALUES (4, N'Administrador')
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
GO
SET IDENTITY_INSERT [dbo].[PropietarioVehiculo] ON 

INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (1, N'1234', N'Leonardo', N'Molinas', N'Cárdenas', 3, N'notro 3285', 937205707, N'pepe.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (2, N'12349', N'Leonardo', N'Molinas', N'Cárdenas', 3, N'notro 3285', 937205707, N'pepe.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (3, N'1234', N'Leonardo', N'Molinas', N'Cárdenas', 3, N'notro', 5665656, N'pepe.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (4, N'17480714-0', N'Leonardo', N'Molinas', N'Cárdenas', 1, N'Plaza Aduana Numero 12', 937205707, N'leonardo.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (5, N'17480714-0', N'Leonardo', N'Molinas', N'Cárdenas', 3, N'Plaza Aduana Numero 12', 937205707, N'leonardo.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (6, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cardenas', 1, N'Plaza Aduana Numero 12', 937205707, N'leonardo.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (7, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cárdenas', 1, N'Plaza Aduana Numero 12', 937205707, N'leonardo.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (8, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cárdenas', 1, N'Plaza Aduana Numero 12', 937205707, N'leonardo.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (9, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cárdenas', 1, N'Plaza Aduana Numero 12', 937205707, N'leonardo.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (10, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cárdenas', 4, N'notro 3285', 937205707, N'Leonardo.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (11, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cárdenas', 3, N'Plaza Aduana Numero 12', 5665656, N'pepe.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (12, N'1234', N'Leonardo', N'2', N'Cárdenas', 3, N'Plaza Aduana Numero 12', 937205707, N'Leonardo.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (13, N'1234', N'Leonardo', N'Molinas', N'Cárdenas', 3, N'notro 3285', 937205707, N'leonardo.molinas@hotmail.com')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (14, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cardenas', 1, N'Plaza aduana numero 12', 937205707, N'leonardo.molinas@hotmail.cl')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (15, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cardenas', 1, N'Plaza aduana numero 12', 937205707, N'leonardo.molinas@hotmail.cl')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (16, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cardenas', 1, N'Plaza aduana numero 12', 937205707, N'leonardo.molinas@hotmail.cl')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (17, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cardenas', 3, N'Plaza aduana numero 12', 937205707, N'leonardo.molinas@hotmail.cl')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (18, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cardenas', 1, N'Plaza aduana numero 12', 937205707, N'leonardo.molinas@hotmail.cl')
INSERT [dbo].[PropietarioVehiculo] ([id], [rutPropietario], [nombresPropietario], [propietarioApellidoPaterno], [propietarioApellidoMaterno], [ciudadId], [direccion], [telefono], [correo]) VALUES (19, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cardenas', 5, N'Plaza aduana numero 12', 937205707, N'leonardo.molinas@hotmail.cl')
SET IDENTITY_INSERT [dbo].[PropietarioVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([id], [codigoRegionMTT], [nombreRegion]) VALUES (5, 5, N'Valparaiso')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[ResponsablePago] ON 

INSERT [dbo].[ResponsablePago] ([id], [NroAtencionId], [rutCliente], [clienteNombres], [clienteApellidoPaterno], [cleinteApellidoMaterno], [telefono], [email], [dirección]) VALUES (9, 9, N'17.480.714-0', N'Leonardo', N'Molinas', N'Cardenas', 937205707, N'leonardo.molinas@hotmail.cl', N'Plaza aduana numero 12')
SET IDENTITY_INSERT [dbo].[ResponsablePago] OFF
GO
SET IDENTITY_INSERT [dbo].[SelloVehiculo] ON 

INSERT [dbo].[SelloVehiculo] ([id], [selloCodigoMTT], [sello]) VALUES (1, 10, N'Verde')
INSERT [dbo].[SelloVehiculo] ([id], [selloCodigoMTT], [sello]) VALUES (2, 20, N'Amarillo')
INSERT [dbo].[SelloVehiculo] ([id], [selloCodigoMTT], [sello]) VALUES (3, 30, N'Rojo')
SET IDENTITY_INSERT [dbo].[SelloVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicios] ON 

INSERT [dbo].[Servicios] ([id], [codigoServicioMtt], [DescripciónServicio], [valorServicio]) VALUES (3, 10, N'Gases', 4000)
INSERT [dbo].[Servicios] ([id], [codigoServicioMtt], [DescripciónServicio], [valorServicio]) VALUES (6, 10, N'Gases', 4000)
INSERT [dbo].[Servicios] ([id], [codigoServicioMtt], [DescripciónServicio], [valorServicio]) VALUES (7, 10, N'Revision Tecnica', 16100)
SET IDENTITY_INSERT [dbo].[Servicios] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoCombustible] ON 

INSERT [dbo].[TipoCombustible] ([id], [codigoCombustibleMTT], [tipoCombustible]) VALUES (30, 10, N'Bencina')
INSERT [dbo].[TipoCombustible] ([id], [codigoCombustibleMTT], [tipoCombustible]) VALUES (40, 20, N'Diesel')
INSERT [dbo].[TipoCombustible] ([id], [codigoCombustibleMTT], [tipoCombustible]) VALUES (50, 30, N'Electrico')
SET IDENTITY_INSERT [dbo].[TipoCombustible] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoPagos] ON 

INSERT [dbo].[TipoPagos] ([id], [tipoPago]) VALUES (1, N'Efectivo')
INSERT [dbo].[TipoPagos] ([id], [tipoPago]) VALUES (2, N'Tarjeta de crédito')
SET IDENTITY_INSERT [dbo].[TipoPagos] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoVehiculo] ON 

INSERT [dbo].[TipoVehiculo] ([id], [codigoTipoVehiculoMTT], [tipoVehiculo]) VALUES (1, 10, N'Automovil')
INSERT [dbo].[TipoVehiculo] ([id], [codigoTipoVehiculoMTT], [tipoVehiculo]) VALUES (2, 20, N'Motocicleta')
INSERT [dbo].[TipoVehiculo] ([id], [codigoTipoVehiculoMTT], [tipoVehiculo]) VALUES (4, 40, N'Camion Clase B')
INSERT [dbo].[TipoVehiculo] ([id], [codigoTipoVehiculoMTT], [tipoVehiculo]) VALUES (5, 50, N'Automovil')
INSERT [dbo].[TipoVehiculo] ([id], [codigoTipoVehiculoMTT], [tipoVehiculo]) VALUES (6, 30, N'Triciclo Electrico')
SET IDENTITY_INSERT [dbo].[TipoVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[Traccion] ON 

INSERT [dbo].[Traccion] ([id], [traccionCodigoMTT], [tipoTraccion]) VALUES (1, 100, N'Delantera')
INSERT [dbo].[Traccion] ([id], [traccionCodigoMTT], [tipoTraccion]) VALUES (2, 200, N'Trasera')
INSERT [dbo].[Traccion] ([id], [traccionCodigoMTT], [tipoTraccion]) VALUES (3, 300, N'4X4')
INSERT [dbo].[Traccion] ([id], [traccionCodigoMTT], [tipoTraccion]) VALUES (4, 400, N'4x2')
INSERT [dbo].[Traccion] ([id], [traccionCodigoMTT], [tipoTraccion]) VALUES (5, 500, N'Integral')
SET IDENTITY_INSERT [dbo].[Traccion] OFF
GO
SET IDENTITY_INSERT [dbo].[Transmision] ON 

INSERT [dbo].[Transmision] ([id], [codigoTransmisionMTT], [tipoTransmision]) VALUES (1, 10, N'Manual')
INSERT [dbo].[Transmision] ([id], [codigoTransmisionMTT], [tipoTransmision]) VALUES (2, 20, N'Automatico')
SET IDENTITY_INSERT [dbo].[Transmision] OFF
GO
ALTER TABLE [dbo].[atencionVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_atencionVehiculo_MarcaVehiculo] FOREIGN KEY([marcaId])
REFERENCES [dbo].[MarcaVehiculo] ([id])
GO
ALTER TABLE [dbo].[atencionVehiculo] CHECK CONSTRAINT [FK_atencionVehiculo_MarcaVehiculo]
GO
ALTER TABLE [dbo].[atencionVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_atencionVehiculo_ModeloVehiculo] FOREIGN KEY([modeloId])
REFERENCES [dbo].[ModeloVehiculo] ([id])
GO
ALTER TABLE [dbo].[atencionVehiculo] CHECK CONSTRAINT [FK_atencionVehiculo_ModeloVehiculo]
GO
ALTER TABLE [dbo].[atencionVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_atencionVehiculo_PropietarioVehiculo] FOREIGN KEY([propietarioId])
REFERENCES [dbo].[PropietarioVehiculo] ([id])
GO
ALTER TABLE [dbo].[atencionVehiculo] CHECK CONSTRAINT [FK_atencionVehiculo_PropietarioVehiculo]
GO
ALTER TABLE [dbo].[atencionVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_atencionVehiculo_SelloVehiculo] FOREIGN KEY([SelloId])
REFERENCES [dbo].[SelloVehiculo] ([id])
GO
ALTER TABLE [dbo].[atencionVehiculo] CHECK CONSTRAINT [FK_atencionVehiculo_SelloVehiculo]
GO
ALTER TABLE [dbo].[atencionVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_atencionVehiculo_Servicios] FOREIGN KEY([servicioId])
REFERENCES [dbo].[Servicios] ([id])
GO
ALTER TABLE [dbo].[atencionVehiculo] CHECK CONSTRAINT [FK_atencionVehiculo_Servicios]
GO
ALTER TABLE [dbo].[atencionVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_atencionVehiculo_TipoCombustible] FOREIGN KEY([combustibleId])
REFERENCES [dbo].[TipoCombustible] ([id])
GO
ALTER TABLE [dbo].[atencionVehiculo] CHECK CONSTRAINT [FK_atencionVehiculo_TipoCombustible]
GO
ALTER TABLE [dbo].[atencionVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_atencionVehiculo_TipoVehiculo] FOREIGN KEY([vehiculoTipoId])
REFERENCES [dbo].[TipoVehiculo] ([id])
GO
ALTER TABLE [dbo].[atencionVehiculo] CHECK CONSTRAINT [FK_atencionVehiculo_TipoVehiculo]
GO
ALTER TABLE [dbo].[atencionVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_atencionVehiculo_Traccion] FOREIGN KEY([traccionId])
REFERENCES [dbo].[Traccion] ([id])
GO
ALTER TABLE [dbo].[atencionVehiculo] CHECK CONSTRAINT [FK_atencionVehiculo_Traccion]
GO
ALTER TABLE [dbo].[atencionVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_atencionVehiculo_Transmision] FOREIGN KEY([transmisionId])
REFERENCES [dbo].[Transmision] ([id])
GO
ALTER TABLE [dbo].[atencionVehiculo] CHECK CONSTRAINT [FK_atencionVehiculo_Transmision]
GO
ALTER TABLE [dbo].[BoletaRevision]  WITH CHECK ADD  CONSTRAINT [FK_BoletaRevision_atencionVehiculo] FOREIGN KEY([nroAtencionId])
REFERENCES [dbo].[atencionVehiculo] ([id])
GO
ALTER TABLE [dbo].[BoletaRevision] CHECK CONSTRAINT [FK_BoletaRevision_atencionVehiculo]
GO
ALTER TABLE [dbo].[BoletaRevision]  WITH CHECK ADD  CONSTRAINT [FK_BoletaRevision_Servicios] FOREIGN KEY([ServicioId])
REFERENCES [dbo].[Servicios] ([id])
GO
ALTER TABLE [dbo].[BoletaRevision] CHECK CONSTRAINT [FK_BoletaRevision_Servicios]
GO
ALTER TABLE [dbo].[BoletaRevision]  WITH CHECK ADD  CONSTRAINT [FK_BoletaRevision_Sucursal] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursal] ([id])
GO
ALTER TABLE [dbo].[BoletaRevision] CHECK CONSTRAINT [FK_BoletaRevision_Sucursal]
GO
ALTER TABLE [dbo].[BoletaRevision]  WITH CHECK ADD  CONSTRAINT [FK_BoletaRevision_TipoPagos] FOREIGN KEY([formaPagoId])
REFERENCES [dbo].[TipoPagos] ([id])
GO
ALTER TABLE [dbo].[BoletaRevision] CHECK CONSTRAINT [FK_BoletaRevision_TipoPagos]
GO
ALTER TABLE [dbo].[CertificadoRevision]  WITH CHECK ADD  CONSTRAINT [FK_CertificadoRevision_atencionVehiculo] FOREIGN KEY([atencionNroId])
REFERENCES [dbo].[atencionVehiculo] ([id])
GO
ALTER TABLE [dbo].[CertificadoRevision] CHECK CONSTRAINT [FK_CertificadoRevision_atencionVehiculo]
GO
ALTER TABLE [dbo].[CertificadoRevision]  WITH CHECK ADD  CONSTRAINT [FK_CertificadoRevision_EstadoRevision] FOREIGN KEY([estadoRevisionId])
REFERENCES [dbo].[EstadoRevision] ([id])
GO
ALTER TABLE [dbo].[CertificadoRevision] CHECK CONSTRAINT [FK_CertificadoRevision_EstadoRevision]
GO
ALTER TABLE [dbo].[Ciudad]  WITH CHECK ADD  CONSTRAINT [FK_Ciudad_Region] FOREIGN KEY([regionId])
REFERENCES [dbo].[Region] ([id])
GO
ALTER TABLE [dbo].[Ciudad] CHECK CONSTRAINT [FK_Ciudad_Region]
GO
ALTER TABLE [dbo].[PropietarioVehiculo]  WITH CHECK ADD  CONSTRAINT [FK_PropietarioVehiculo_Ciudad] FOREIGN KEY([ciudadId])
REFERENCES [dbo].[Ciudad] ([id])
GO
ALTER TABLE [dbo].[PropietarioVehiculo] CHECK CONSTRAINT [FK_PropietarioVehiculo_Ciudad]
GO
ALTER TABLE [dbo].[ResponsablePago]  WITH CHECK ADD  CONSTRAINT [FK_ResponsablePago_atencionVehiculo] FOREIGN KEY([NroAtencionId])
REFERENCES [dbo].[atencionVehiculo] ([id])
GO
ALTER TABLE [dbo].[ResponsablePago] CHECK CONSTRAINT [FK_ResponsablePago_atencionVehiculo]
GO
ALTER TABLE [dbo].[ResultadoEstacionGases]  WITH CHECK ADD  CONSTRAINT [FK_ResultadoEstacionGases_atencionVehiculo] FOREIGN KEY([nroAtencionId])
REFERENCES [dbo].[atencionVehiculo] ([id])
GO
ALTER TABLE [dbo].[ResultadoEstacionGases] CHECK CONSTRAINT [FK_ResultadoEstacionGases_atencionVehiculo]
GO
ALTER TABLE [dbo].[ResultadosEstacionFrenometro]  WITH CHECK ADD  CONSTRAINT [FK_ResultadosEstacionFrenometro_atencionVehiculo1] FOREIGN KEY([nroAtencionId])
REFERENCES [dbo].[atencionVehiculo] ([id])
GO
ALTER TABLE [dbo].[ResultadosEstacionFrenometro] CHECK CONSTRAINT [FK_ResultadosEstacionFrenometro_atencionVehiculo1]
GO
ALTER TABLE [dbo].[ResultadosEstacionVisuales]  WITH CHECK ADD  CONSTRAINT [FK_ResultadosEstacionVisuales_atencionVehiculo] FOREIGN KEY([nroAtencionId])
REFERENCES [dbo].[atencionVehiculo] ([id])
GO
ALTER TABLE [dbo].[ResultadosEstacionVisuales] CHECK CONSTRAINT [FK_ResultadosEstacionVisuales_atencionVehiculo]
GO
ALTER TABLE [dbo].[TrazaWebServiceMTT]  WITH CHECK ADD  CONSTRAINT [FK_TrazaWebServiceMTT_atencionVehiculo] FOREIGN KEY([nroAtencionId])
REFERENCES [dbo].[atencionVehiculo] ([id])
GO
ALTER TABLE [dbo].[TrazaWebServiceMTT] CHECK CONSTRAINT [FK_TrazaWebServiceMTT_atencionVehiculo]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Ciudad] FOREIGN KEY([ciudadId])
REFERENCES [dbo].[Ciudad] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Ciudad]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Jefatura] FOREIGN KEY([jefaturaId])
REFERENCES [dbo].[Jefatura] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Jefatura]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Perfiles] FOREIGN KEY([perfilId])
REFERENCES [dbo].[Perfiles] ([id])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Perfiles]
GO
