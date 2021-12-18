USE [master]
GO
/****** Object:  Database [Draft]    Script Date: 18.12.2021 13:47:50 ******/
CREATE DATABASE [Draft]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Draft', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Draft.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Draft_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Draft_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Draft] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Draft].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Draft] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Draft] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Draft] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Draft] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Draft] SET ARITHABORT OFF 
GO
ALTER DATABASE [Draft] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Draft] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Draft] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Draft] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Draft] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Draft] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Draft] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Draft] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Draft] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Draft] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Draft] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Draft] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Draft] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Draft] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Draft] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Draft] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Draft] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Draft] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Draft] SET  MULTI_USER 
GO
ALTER DATABASE [Draft] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Draft] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Draft] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Draft] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Draft] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Draft] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Draft] SET QUERY_STORE = OFF
GO
USE [Draft]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[AgentTypeID] [int] NOT NULL,
	[Address] [nvarchar](300) NULL,
	[INN] [varchar](12) NOT NULL,
	[KPP] [varchar](9) NULL,
	[DirectorName] [nvarchar](100) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Logo] [nvarchar](100) NULL,
	[Priority] [int] NOT NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgentType]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgentType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_AgentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Analyticks]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Analyticks](
	[idStaff] [int] NOT NULL,
	[NumberNFC] [varchar](10) NULL,
	[TimeComeToWork] [datetime2](7) NULL,
	[TimeExitToWork] [datetime2](7) NULL,
	[CountSmokeBreak] [nvarchar](5) NULL,
 CONSTRAINT [PK_Analyticks] PRIMARY KEY CLUSTERED 
(
	[idStaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IDMaterials]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IDMaterials](
	[Id_Material] [int] IDENTITY(1,1) NOT NULL,
	[Materials] [nvarchar](40) NULL,
 CONSTRAINT [PK_IDMaterials] PRIMARY KEY CLUSTERED 
(
	[Id_Material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[id] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[SecondName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[Id] [int] NOT NULL,
	[NameMaterial] [nvarchar](50) NULL,
	[Supplier] [nvarchar](40) NULL,
	[idMaterial] [int] NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialCountHistory]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialCountHistory](
	[ID] [int] NOT NULL,
	[MaterialID] [int] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[CountValue] [float] NOT NULL,
 CONSTRAINT [PK_MaterialCountHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialSupplier]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialSupplier](
	[MaterialID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_MaterialSupplier] PRIMARY KEY CLUSTERED 
(
	[MaterialID] ASC,
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialSupply]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialSupply](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](40) NULL,
	[TypeMaterial] [int] NULL,
	[Image] [nvarchar](40) NULL,
	[Price] [float] NULL,
	[CountToHause] [int] NULL,
	[MinCount] [int] NULL,
	[CountToPack] [int] NULL,
	[Si] [nvarchar](5) NULL,
 CONSTRAINT [PK_MaterialSupply] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenagerSale]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenagerSale](
	[id] [int] NOT NULL,
	[idManager] [int] NULL,
	[CountAgent] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ProductTypeID] [int] NULL,
	[ArticleNumber] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](100) NULL,
	[ProductionPersonCount] [int] NULL,
	[ProductionWorkshopNumber] [int] NULL,
	[MinCostForAgent] [decimal](10, 2) NOT NULL,
	[WeighWithPack] [nvarchar](10) NULL,
	[WeighNoPack] [nvarchar](10) NULL,
	[СertificateNumber] [nvarchar](10) NULL,
	[StandardNumber] [nvarchar](10) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Production]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production](
	[idProduction] [int] NOT NULL,
	[СostPrice] [int] NULL,
	[idWorkshop] [int] NULL,
	[CountPeople] [int] NULL,
	[Materials] [nvarchar](50) NULL,
	[idProduct] [int] NULL,
 CONSTRAINT [PK_Production] PRIMARY KEY CLUSTERED 
(
	[idProduction] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] NOT NULL,
	[AgentID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[SaleDate] [date] NOT NULL,
	[ProductCount] [int] NOT NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[DefectedPercent] [float] NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [int] NOT NULL,
	[Firstname] [nvarchar](20) NULL,
	[LastName] [nvarchar](20) NULL,
	[Middlename] [nvarchar](20) NULL,
	[DataOfBirth] [date] NULL,
	[NumberPasport] [int] NULL,
	[SeriaPasport] [int] NULL,
	[ScoreBank] [nvarchar](20) NULL,
	[NameBank] [nvarchar](10) NULL,
	[Family] [nvarchar](5) NULL,
	[LevelHealth] [nvarchar](20) NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffSpec]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffSpec](
	[idStaff] [int] NOT NULL,
	[PresenceOfSpecialty] [nvarchar](5) NULL,
 CONSTRAINT [PK_StaffSpec] PRIMARY KEY CLUSTERED 
(
	[idStaff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] NOT NULL,
	[NameSupply] [nvarchar](50) NULL,
	[TypeSupply] [nvarchar](50) NULL,
	[INN] [varchar](12) NULL,
	[TopQuality] [int] NULL,
	[DateToSupply] [date] NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMaterial]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMaterial](
	[id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeMaterial] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workshop]    Script Date: 18.12.2021 13:47:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workshop](
	[idWorkshop] [int] NOT NULL,
	[Title] [nvarchar](30) NULL,
 CONSTRAINT [PK_Workshop] PRIMARY KEY CLUSTERED 
(
	[idWorkshop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[IDMaterials] ON 

INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (1, N'Гранулы зеленый 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (2, N'Рулон зеленый 0x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (3, N'Нарезка серый 1x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (4, N'Рулон серый 1x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (5, N'Нарезка белый 1x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (6, N'Нарезка зеленый 3x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (7, N'Спрессованный пак синий 0x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (8, N'Спрессованный пак зеленый 2x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (9, N'Нарезка белый 3x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (10, N'Гранулы цветной 1x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (11, N'Рулон синий 1x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (12, N'Спрессованный пак цветной 3x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (13, N'Нарезка белый 0x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (14, N'Рулон зеленый 1x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (15, N'Спрессованный пак белый 1x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (16, N'Спрессованный пак белый 0x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (17, N'Рулон зеленый 2x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (18, N'Спрессованный пак зеленый 1x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (19, N'Рулон зеленый 1x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (20, N'Нарезка синий 2x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (21, N'Гранулы цветной 2x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (22, N'Нарезка синий 2x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (23, N'Нарезка серый 2x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (24, N'Спрессованный пак серый 0x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (25, N'Гранулы серый 3x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (26, N'Спрессованный пак серый 3x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (27, N'Спрессованный пак зеленый 1x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (28, N'Рулон синий 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (29, N'Спрессованный пак цветной 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (30, N'Рулон белый 3x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (31, N'Спрессованный пак зеленый 1x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (32, N'Гранулы зеленый 2x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (33, N'Нарезка серый 3x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (34, N'Рулон синий 2x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (35, N'Спрессованный пак цветной 1x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (36, N'Нарезка синий 1x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (37, N'Спрессованный пак цветной 2x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (38, N'Гранулы белый 1x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (39, N'Рулон зеленый 3x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (40, N'Гранулы зеленый 1x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (41, N'Гранулы серый 2x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (42, N'Гранулы синий 1x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (43, N'Гранулы белый 2x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (44, N'Нарезка зеленый 1x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (45, N'Рулон зеленый 0x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (46, N'Гранулы белый 2x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (47, N'Гранулы зеленый 2x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (48, N'Нарезка зеленый 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (49, N'Рулон белый 0x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (50, N'Спрессованный пак синий 2x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (51, N'Спрессованный пак серый 3x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (52, N'Спрессованный пак зеленый 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (53, N'Нарезка белый 2x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (54, N'Нарезка синий 2x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (55, N'Рулон цветной 1x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (56, N'Спрессованный пак серый 1x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (57, N'Спрессованный пак белый 3x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (58, N'Гранулы цветной 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (59, N'Нарезка зеленый 0x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (60, N'Нарезка белый 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (61, N'Рулон зеленый 0x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (62, N'Нарезка цветной 2x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (63, N'Спрессованный пак цветной 2x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (64, N'Гранулы цветной 3x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (65, N'Спрессованный пак серый 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (66, N'Спрессованный пак цветной 3x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (67, N'Спрессованный пак цветной 3x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (68, N'Рулон зеленый 1x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (69, N'Спрессованный пак зеленый 3x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (70, N'Нарезка зеленый 3x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (71, N'Рулон белый 3x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (72, N'Нарезка цветной 2x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (73, N'Гранулы цветной 2x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (74, N'Нарезка белый 1x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (75, N'Нарезка зеленый 1x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (76, N'Нарезка цветной 2x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (77, N'Спрессованный пак цветной 0x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (78, N'Нарезка синий 3x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (79, N'Нарезка серый 2x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (80, N'Рулон белый 1x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (81, N'Спрессованный пак цветной 2x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (82, N'Нарезка цветной 0x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (83, N'Нарезка серый 2x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (84, N'Рулон белый 1x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (85, N'Спрессованный пак синий 2x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (86, N'Спрессованный пак цветной 0x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (87, N'Спрессованный пак синий 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (88, N'Рулон синий 2x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (89, N'Гранулы белый 3x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (90, N'Гранулы зеленый 0x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (91, N'Рулон синий 2x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (92, N'Рулон серый 3x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (93, N'Гранулы цветной 3x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (94, N'Нарезка синий 2x2')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (95, N'Гранулы зеленый 1x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (96, N'Спрессованный пак белый 1x1')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (97, N'Рулон зеленый 0x3')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (98, N'Нарезка синий 3x0')
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (99, N'Нарезка цветной 2x1')
GO
INSERT [dbo].[IDMaterials] ([Id_Material], [Materials]) VALUES (100, N'Рулон синий 1x1')
SET IDENTITY_INSERT [dbo].[IDMaterials] OFF
GO
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (1, N'Спрессованный пак белый 1x1', N'ОрионБухМетал', 96)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (2, N'Спрессованный пак белый 1x1', N'ОблВектор', 96)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (3, N'Нарезка цветной 2x2', N'МонтажНефтьОрион', 72)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (4, N'Спрессованный пак белый 1x1', N'ХозБашкирГла', 96)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (5, N'Нарезка цветной 2x2', N'Компания МорКаза', 72)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (6, N'Нарезка цветной 2x2', N'АлмазМикроМобайлПром', 72)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (7, N'Гранулы цветной 0x3', N'РыбИнфо', 58)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (8, N'Нарезка синий 2x2', N'АлмазМикроМобайлПром', 94)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (9, N'Нарезка серый 2x2', N'РосЮпитер', 23)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (10, N'Нарезка синий 2x2', N'Глав', 94)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (11, N'Нарезка синий 2x2', N'ФинансСервис', 94)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (12, N'Нарезка серый 2x2', N'РечТранс', 23)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (13, N'Гранулы цветной 0x3', N'Тверь', 58)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (14, N'Гранулы цветной 1x3', N'ОрионБухМетал', 10)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (15, N'Гранулы цветной 3x0', N'Вод', 64)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (16, N'Спрессованный пак зеленый 1x2', N'Строй', 18)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (17, N'Нарезка зеленый 3x0', N'ХозБашкирГла', 6)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (18, N'Гранулы цветной 3x0', N'ХозБашкирГла', 64)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (19, N'Нарезка зеленый 3x0', N'Тех', 6)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (20, N'Нарезка зеленый 0x3', N'Омск', 48)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (21, N'Гранулы белый 2x1', N'Инфо', 46)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (22, N'Нарезка зеленый 3x0', N'ТверьМор', 6)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (23, N'Рулон синий 0x3', N'ЭлектроВод', 28)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (24, N'Нарезка зеленый 0x3', N'ЭлектроВод', 48)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (25, N'Гранулы цветной 1x3', N'Компания МорКаза', 10)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (26, N'Нарезка белый 1x2', N'УралТексти', 5)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (27, N'Нарезка зеленый 0x3', N'ТверьЛайт', 48)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (28, N'Рулон зеленый 2x2', N'ЖелДорСтройВекторКомплекс', 17)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (29, N'Гранулы белый 2x1', N'ТрансМясМясКомплекс', 46)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (30, N'Нарезка зеленый 3x0', N'КрепМетизВектор', 6)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (31, N'Гранулы белый 2x1', N'ЖелДорСтройВекторКомплекс', 46)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (32, N'Нарезка зеленый 3x0', N'Компания Нефть', 6)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (33, N'Гранулы цветной 3x0', N'Лифт', 64)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (34, N'Нарезка зеленый 0x1', N'ГлавСерви', 59)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (35, N'Рулон зеленый 2x2', N'РечТранс', 17)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (36, N'Рулон синий 1x1', N'Компания Нефть', 100)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (37, N'Спрессованный пак зеленый 1x2', N'ТелекомТра', 18)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (38, N'Гранулы белый 2x1', N'РечТранс', 46)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (39, N'Спрессованный пак синий 0x3', N'РыбВостокХоз', 87)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (40, N'Нарезка зеленый 3x0', N'Радио', 6)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (41, N'Рулон синий 0x3', N'Вод', 28)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (42, N'Нарезка синий 2x3', N'ЭлектроВод', 22)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (43, N'Спрессованный пак цветной 2x0', N'ГлавСерви', 81)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (44, N'Спрессованный пак цветной 2x0', N'ХозСервис', 81)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (45, N'Нарезка цветной 0x0', N'РыбИнфо', 82)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (46, N'Нарезка серый 2x0', N'ЦементИнфоМонтаж', 83)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (47, N'Спрессованный пак зеленый 2x0', N'Лифт', 8)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (48, N'Нарезка цветной 0x0', N'ЖелДорСтройВекторКомплекс', 82)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (49, N'Нарезка цветной 0x0', N'Вод', 82)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (50, N'Нарезка цветной 0x0', N'Тверь', 82)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (51, N'Спрессованный пак зеленый 2x0', N'ХозСервис', 8)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (52, N'Нарезка серый 2x0', N'ЖелДорХ', 83)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (53, N'Гранулы зеленый 0x2', N'РечТранс', 90)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (54, N'Нарезка белый 2x2', N'МонтажОр', 53)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (55, N'Нарезка белый 2x2', N'Компания МорКаза', 53)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (56, N'Нарезка белый 2x2', N'ТелекомТра', 53)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (57, N'Нарезка белый 2x2', N'Компания ТомскТверьТ', 53)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (58, N'Нарезка белый 2x2', N'УралТексти', 53)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (59, N'Нарезка белый 2x2', N'Лифт', 53)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (60, N'Спрессованный пак белый 0x2', N'ЦементИнфоМонтаж', 16)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (61, N'Рулон зеленый 0x0', N'ОблВектор', 2)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (62, N'Рулон зеленый 0x0', N'Компания ТелекомРосКрепПром', 2)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (63, N'Рулон серый 3x0', N'ЖелДорСтройВекторКомплекс', 92)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (64, N'Спрессованный пак цветной 3x1', N'ХозБашкирГла', 66)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (65, N'Рулон серый 3x0', N'ФинансСервис', 92)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (66, N'Нарезка синий 3x0', N'Омск', 98)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (67, N'Нарезка синий 3x0', N'Компания Нефть', 98)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (68, N'Нарезка синий 3x0', N'ИнжСофт', 98)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (69, N'Спрессованный пак синий 0x2', N'МонтажОр', 7)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (70, N'Гранулы синий 1x0', N'АлмазМикроМобайлПром', 42)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (71, N'Рулон белый 1x0', N'Компания ТелекомРосКрепПром', 84)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (72, N'Рулон белый 1x0', N'ЦементИнфоМонтаж', 84)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (73, N'Спрессованный пак синий 2x0', N'Омск', 85)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (74, N'Гранулы цветной 2x0', N'ТелекомМетизХмель', 73)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (75, N'Рулон белый 1x0', N'РечТранс', 84)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (76, N'Спрессованный пак синий 0x2', N'ТверьЛайт', 7)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (77, N'Рулон белый 1x0', N'ТелекомТра', 84)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (78, N'Гранулы зеленый 1x2', N'ХозСервис', 40)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (79, N'Спрессованный пак синий 0x2', N'ДизайнТекстил', 7)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (80, N'Спрессованный пак серый 0x3', N'Инфо', 65)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (81, N'Рулон белый 1x0', N'ФинансСервис', 84)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (82, N'Гранулы синий 1x0', N'ТрансМясМясКомплекс', 42)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (83, N'Рулон белый 1x0', N'ВодОбл', 84)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (84, N'Спрессованный пак синий 0x2', N'Электро', 7)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (85, N'Рулон зеленый 0x2', N'Глав', 45)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (86, N'Гранулы цветной 3x1', N'ОблВектор', 93)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (87, N'Спрессованный пак синий 2x1', N'РыбВостокХоз', 50)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (88, N'Спрессованный пак синий 2x1', N'ФинансСервис', 50)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (89, N'Спрессованный пак зеленый 1x0', N'РечСофтРе', 27)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (90, N'Гранулы цветной 3x1', N'РечСофтРе', 93)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (91, N'Рулон белый 3x1', N'РыбВостокХоз', 71)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (92, N'Спрессованный пак зеленый 1x0', N'ХозСервис', 27)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (93, N'Спрессованный пак зеленый 1x0', N'Омск', 27)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (94, N'Спрессованный пак цветной 2x3', N'Лифт', 63)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (95, N'Гранулы цветной 3x1', N'ЖелДорХ', 93)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (96, N'Спрессованный пак цветной 2x3', N'ТелекомТра', 63)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (97, N'Спрессованный пак зеленый 1x0', N'Лифт', 27)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (98, N'Гранулы цветной 3x1', N'Электро', 93)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (99, N'Рулон зеленый 3x2', N'Электро', 39)
INSERT [dbo].[Material] ([Id], [NameMaterial], [Supplier], [idMaterial]) VALUES (100, N'Спрессованный пак цветной 2x3', N'ЦементИнфоМонтаж', 63)
GO
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (1, N'Гранулы зеленый 0x3', 1, N'', 33037, 937, 31, 10, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (2, N'Рулон зеленый 0x0', 2, N'\materials\material_25.jpeg', 43562, 371, 32, 8, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (3, N'Нарезка серый 1x1', 3, N'', 36682, 302, 41, 7, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (4, N'Рулон серый 1x0', 2, N'\materials\material_12.jpeg', 1998, 811, 26, 10, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (5, N'Нарезка белый 1x2', 3, N'', 39259, 248, 27, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (6, N'Нарезка зеленый 3x0', 3, N'\materials\material_7.jpeg', 25985, 345, 30, 4, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (7, N'Спрессованный пак синий 0x2', 4, N'\materials\material_24.jpeg', 47443, 881, 14, 9, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (8, N'Спрессованный пак зеленый 2x0', 4, N'', 25974, 215, 25, 6, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (9, N'Нарезка белый 3x1', 3, N'', 27374, 439, 50, 8, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (10, N'Гранулы цветной 1x3', 1, N'\materials\material_11.jpeg', 16651, 20, 23, 4, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (11, N'Рулон синий 1x0', 2, N'', 49990, 972, 40, 9, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (12, N'Спрессованный пак цветной 3x0', 4, N'', 36740, 159, 42, 5, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (13, N'Нарезка белый 0x1', 3, N'', 32370, 368, 16, 10, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (14, N'Рулон зеленый 1x3', 2, N'', 12393, 20, 17, 6, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (15, N'Спрессованный пак белый 1x2', 4, N'\materials\material_16.jpeg', 21359, 27, 28, 2, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (16, N'Спрессованный пак белый 0x2', 4, N'\materials\material_5.jpeg', 36343, 601, 49, 7, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (17, N'Рулон зеленый 2x2', 2, N'', 7610, 94, 6, 4, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (18, N'Спрессованный пак зеленый 1x2', 4, N'\materials\material_3.jpeg', 35304, 1, 12, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (19, N'Рулон зеленый 1x1', 2, N'', 28235, 884, 5, 1, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (20, N'Нарезка синий 2x1', 3, N'', 30327, 82, 44, 7, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (21, N'Гранулы цветной 2x1', 1, N'', 33885, 757, 5, 1, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (22, N'Нарезка синий 2x3', 3, N'\materials\material_23.jpeg', 53097, 44, 5, 5, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (23, N'Нарезка серый 2x2', 3, N'', 30474, 476, 5, 3, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (24, N'Спрессованный пак серый 0x2', 4, N'', 2540, 497, 27, 7, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (25, N'Гранулы серый 3x0', 1, N'', 50093, 705, 34, 9, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (26, N'Спрессованный пак серый 3x1', 4, N'', 10763, 429, 22, 8, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (27, N'Спрессованный пак зеленый 1x0', 4, N'\materials\material_17.jpeg', 18413, 560, 17, 10, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (28, N'Рулон синий 0x3', 2, N'\materials\material_8.jpeg', 47343, 243, 41, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (29, N'Спрессованный пак цветной 0x3', 4, N'', 10544, 610, 41, 2, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (30, N'Рулон белый 3x2', 2, N'', 17632, 608, 5, 8, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (31, N'Спрессованный пак зеленый 1x1', 4, N'', 13911, 577, 28, 7, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (32, N'Гранулы зеленый 2x0', 1, N'', 18961, 708, 11, 2, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (33, N'Нарезка серый 3x3', 3, N'', 51486, 149, 18, 5, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (34, N'Рулон синий 2x3', 2, N'', 15889, 775, 42, 8, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (35, N'Спрессованный пак цветной 1x2', 4, N'\materials\material_15.jpeg', 1382, 189, 31, 9, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (36, N'Нарезка синий 1x2', 3, N'', 40754, 353, 5, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (37, N'Спрессованный пак цветной 2x1', 4, N'', 20404, 549, 21, 9, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (38, N'Гранулы белый 1x2', 1, N'', 28326, 265, 10, 10, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (39, N'Рулон зеленый 3x2', 2, N'\materials\material_2.jpeg', 40932, 111, 37, 10, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (40, N'Гранулы зеленый 1x2', 1, N'\materials\material_4.jpeg', 36121, 2, 29, 9, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (41, N'Гранулы серый 2x3', 1, N'', 30903, 185, 22, 6, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (42, N'Гранулы синий 1x0', 1, N'', 19889, 579, 12, 9, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (43, N'Гранулы белый 2x2', 1, N'', 11843, 232, 22, 9, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (44, N'Нарезка зеленый 1x1', 3, N'\materials\material_6.jpeg', 53096, 883, 42, 7, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (45, N'Рулон зеленый 0x2', 2, N'', 50081, 35, 10, 10, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (46, N'Гранулы белый 2x1', 1, N'', 49124, 437, 40, 4, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (47, N'Гранулы зеленый 2x3', 1, N'', 19788, 848, 18, 10, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (48, N'Нарезка зеленый 0x3', 3, N'', 7884, 943, 25, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (49, N'Рулон белый 0x1', 2, N'', 50081, 99, 8, 7, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (50, N'Спрессованный пак синий 2x1', 4, N'', 31625, 921, 18, 10, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (51, N'Спрессованный пак серый 3x0', 4, N'', 35304, 391, 29, 7, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (52, N'Спрессованный пак зеленый 0x3', 4, N'', 18848, 966, 7, 6, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (53, N'Нарезка белый 2x2', 3, N'\materials\material_26.jpeg', 39945, 614, 7, 7, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (54, N'Нарезка синий 2x0', 3, N'', 13380, 899, 9, 8, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (55, N'Рулон цветной 1x3', 2, N'', 45185, 423, 48, 6, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (56, N'Спрессованный пак серый 1x3', 4, N'', 375, 805, 50, 7, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (57, N'Спрессованный пак белый 3x3', 4, N'', 28510, 158, 34, 10, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (58, N'Гранулы цветной 0x3', 1, N'\materials\material_20.jpeg', 16202, 641, 35, 3, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (59, N'Нарезка зеленый 0x1', 3, N'', 53874, 502, 36, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (60, N'Нарезка белый 0x3', 3, N'', 34619, 444, 27, 5, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (61, N'Рулон зеленый 0x1', 2, N'', 46510, 60, 14, 2, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (62, N'Нарезка цветной 2x0', 3, N'', 49221, 118, 22, 7, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (63, N'Спрессованный пак цветной 2x3', 4, N'', 4347, 746, 27, 10, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (64, N'Гранулы цветной 3x0', 1, N'', 3273, 151, 25, 4, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (65, N'Спрессованный пак серый 0x3', 4, N'', 40699, 386, 34, 9, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (66, N'Спрессованный пак цветной 3x1', 4, N'', 45318, 146, 23, 8, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (67, N'Спрессованный пак цветной 3x3', 4, N'', 18048, 932, 47, 5, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (68, N'Рулон зеленый 1x0', 2, N'', 41572, 124, 5, 3, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (69, N'Спрессованный пак зеленый 3x2', 4, N'', 18071, 890, 5, 5, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (70, N'Нарезка зеленый 3x3', 3, N'', 30112, 172, 20, 2, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (71, N'Рулон белый 3x1', 2, N'', 13360, 613, 13, 10, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (72, N'Нарезка цветной 2x2', 3, N'\materials\material_9.jpeg', 41538, 326, 34, 2, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (73, N'Гранулы цветной 2x0', 1, N'\materials\material_21.jpeg', 2670, 309, 15, 9, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (74, N'Нарезка белый 1x0', 3, N'', 16050, 924, 33, 5, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (75, N'Нарезка зеленый 1x2', 3, N'', 45568, 339, 8, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (76, N'Нарезка цветной 2x3', 3, N'', 32336, 498, 45, 3, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (77, N'Спрессованный пак цветной 0x2', 4, N'', 24205, 474, 30, 7, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (78, N'Нарезка синий 3x1', 3, N'', 50887, 631, 27, 6, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (79, N'Нарезка серый 2x1', 3, N'', 7801, 2, 50, 6, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (80, N'Рулон белый 1x2', 2, N'', 17952, 599, 18, 2, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (81, N'Спрессованный пак цветной 2x0', 4, N'\materials\material_13.jpeg', 17965, 211, 46, 5, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (82, N'Нарезка цветной 0x0', 3, N'', 4018, 311, 9, 6, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (83, N'Нарезка серый 2x0', 3, N'', 35548, 858, 37, 6, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (84, N'Рулон белый 1x0', 2, N'\materials\material_18.jpeg', 37126, 960, 35, 9, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (85, N'Спрессованный пак синий 2x0', 4, N'\materials\material_22.jpeg', 53857, 744, 50, 9, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (86, N'Спрессованный пак цветной 0x1', 4, N'', 21081, 175, 50, 7, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (87, N'Спрессованный пак синий 0x3', 4, N'', 29128, 349, 41, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (88, N'Рулон синий 2x1', 2, N'', 32118, 859, 5, 3, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (89, N'Гранулы белый 3x2', 1, N'', 36635, 732, 50, 9, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (90, N'Гранулы зеленый 0x2', 1, N'', 46326, 787, 40, 7, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (91, N'Рулон синий 2x2', 2, N'', 16303, 426, 17, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (92, N'Рулон серый 3x0', 2, N'\materials\material_10.jpeg', 39760, 34, 17, 8, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (93, N'Гранулы цветной 3x1', 1, N'\materials\material_1.jpeg', 21534, 44, 45, 10, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (94, N'Нарезка синий 2x2', 3, N'', 55748, 845, 42, 3, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (95, N'Гранулы зеленый 1x3', 1, N'', 48576, 603, 5, 8, N'л')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (96, N'Спрессованный пак белый 1x1', 4, N'', 16919, 547, 35, 2, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (97, N'Рулон зеленый 0x3', 2, N'', 52323, 913, 13, 4, N'м')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (98, N'Нарезка синий 3x0', 3, N'\materials\material_19.jpeg', 52955, 696, 42, 8, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (99, N'Нарезка цветной 2x1', 3, N'', 9509, 168, 40, 2, N'кг')
INSERT [dbo].[MaterialSupply] ([Id], [Title], [TypeMaterial], [Image], [Price], [CountToHause], [MinCount], [CountToPack], [Si]) VALUES (100, N'Рулон синий 1x1', 2, N'\materials\material_14.jpeg', 40995, 22, 37, 4, N'кг')
GO
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (1, N'ОблВектор', N' МКК', N'1385540089', 40, CAST(N'2014-11-01' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (2, N'Строй', N' ОАО', N'2255810682', 54, CAST(N'2010-04-06' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (3, N'МонтажНефтьОрион', N' ООО', N'1298208597', 45, CAST(N'2014-12-13' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (4, N'ХозБашкирГла', N' ОАО', N'1708759159', 10, CAST(N'2010-09-07' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (5, N'ДизайнТекстил', N' ООО', N'2093683523', 69, CAST(N'2012-12-16' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (6, N'Инфо', N' ООО', N'1272826845', 33, CAST(N'2011-12-28' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (7, N'ОрионБухМетал', N' ООО', N'2193222008', 52, CAST(N'2012-04-09' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (8, N'РыбИнфо', N' МФО', N'1418660803', 71, CAST(N'2013-05-23' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (9, N'Тех', N' МФО', N'2148577794', 28, CAST(N'2010-12-15' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (10, N'ЦементОрион', N' МКК', N'1536344749', 43, CAST(N'2016-02-06' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (11, N'ФинансСервис', N' ООО', N'1499914719', 21, CAST(N'2016-05-27' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (12, N'ТрансМясМясКомплекс', N' ООО', N'1184923897', 78, CAST(N'2019-07-14' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (13, N'ГлавСтрой', N' ОАО', N'1107467048', 77, CAST(N'2014-05-01' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (14, N'ИнжСофт', N' МФО', N'2209210168', 99, CAST(N'2019-07-21' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (15, N'ТелекомМетизХмель', N' ООО', N'1001436679', 67, CAST(N'2013-06-14' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (16, N'Лифт', N' ООО', N'1226636245', 26, CAST(N'2013-12-02' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (17, N'МонтажОр', N' ООО', N'1687338212', 6, CAST(N'2015-01-18' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (18, N'РыбОбл', N' ОАО', N'2097643775', 80, CAST(N'2016-03-05' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (19, N'ГлавСерви', N' ПАО', N'2112058447', 20, CAST(N'2016-11-05' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (20, N'СервисБашкирКазТраст', N' МФО', N'1549832431', 36, CAST(N'2018-03-19' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (21, N'Компания Нефть', N' ОАО', N'2173203619', 97, CAST(N'2010-08-09' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (22, N'РыбВостокХоз', N' ОАО', N'1311161756', 47, CAST(N'2017-09-09' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (23, N'Радио', N' ОАО', N'1104637210', 27, CAST(N'2016-08-21' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (24, N'РечСофтРе', N' ОАО', N'1155044386', 77, CAST(N'2012-08-08' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (25, N'Компания ТелекомРосКрепПром', N' ОАО', N'1124623718', 71, CAST(N'2012-06-17' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (26, N'Омск', N' МКК', N'1567184813', 90, CAST(N'2016-12-01' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (27, N'РосЮпитер', N' МФО', N'2100448888', 23, CAST(N'2013-07-21' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (28, N'БухИнфо', N' МКК', N'2192138211', 91, CAST(N'2017-12-17' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (29, N'РечТранс', N' МФО', N'2237035085', 22, CAST(N'2019-10-12' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (30, N'ТелекомТра', N' ОАО', N'1144555605', 31, CAST(N'2010-08-26' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (31, N'Глав', N' ОАО', N'1859167660', 87, CAST(N'2012-05-24' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (32, N'ЖелДорСтройВекторКомплекс', N' ООО', N'2004254497', 97, CAST(N'2019-05-12' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (33, N'Вод', N' ООО', N'1492095710', 63, CAST(N'2017-12-21' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (34, N'ТверьМор', N' МКК', N'2013469587', 61, CAST(N'2017-01-08' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (35, N'ЦементИнфоМонтаж', N' ОАО', N'1389100819', 46, CAST(N'2014-06-19' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (36, N'Вектор', N' МКК', N'1009676137', 22, CAST(N'2012-06-20' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (37, N'Компания МорКаза', N' ПАО', N'1177669508', 6, CAST(N'2016-05-28' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (38, N'Урал', N' МФО', N'1439263529', 21, CAST(N'2013-05-06' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (39, N'ГорТверьЛифт', N' ООО', N'1865606765', 50, CAST(N'2015-04-01' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (40, N'ЭлектроВод', N' ЗАО', N'1521101623', 16, CAST(N'2017-05-27' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (41, N'АлмазМикроМобайлПром', N' ООО', N'1664868343', 94, CAST(N'2016-03-06' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (42, N'Компания ТомскТверьТ', N' ООО', N'1341807682', 26, CAST(N'2015-12-25' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (43, N'Тверь', N' ООО', N'1860530128', 17, CAST(N'2017-06-25' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (44, N'УралТексти', N' ОАО', N'1705799898', 54, CAST(N'2018-04-28' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (45, N'ТверьЛайт', N' ЗАО', N'1499654365', 14, CAST(N'2015-02-09' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (46, N'ХозСервис', N' ОАО', N'1656715446', 99, CAST(N'2015-11-13' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (47, N'КрепМетизВектор', N' ОАО', N'1209084074', 64, CAST(N'2016-06-04' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (48, N'ЖелДорХ', N' ОАО', N'2004002859', 65, CAST(N'2015-05-03' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (49, N'ВодОбл', N' ОАО', N'1987741499', 38, CAST(N'2019-04-25' AS Date))
INSERT [dbo].[Supplier] ([Id], [NameSupply], [TypeSupply], [INN], [TopQuality], [DateToSupply]) VALUES (50, N'Электро', N' ПАО', N'1827769521', 86, CAST(N'2015-05-03' AS Date))
GO
INSERT [dbo].[TypeMaterial] ([id], [Name]) VALUES (1, N'Гранулы')
INSERT [dbo].[TypeMaterial] ([id], [Name]) VALUES (2, N'Рулон')
INSERT [dbo].[TypeMaterial] ([id], [Name]) VALUES (3, N'Нарезка')
INSERT [dbo].[TypeMaterial] ([id], [Name]) VALUES (4, N'Пресс')
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_AgentType] FOREIGN KEY([AgentTypeID])
REFERENCES [dbo].[AgentType] ([ID])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_AgentType]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_MaterialSupply] FOREIGN KEY([idMaterial])
REFERENCES [dbo].[MaterialSupply] ([Id])
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_MaterialSupply]
GO
ALTER TABLE [dbo].[MaterialCountHistory]  WITH CHECK ADD  CONSTRAINT [FK_MaterialCountHistory_MaterialSupply] FOREIGN KEY([MaterialID])
REFERENCES [dbo].[MaterialSupply] ([Id])
GO
ALTER TABLE [dbo].[MaterialCountHistory] CHECK CONSTRAINT [FK_MaterialCountHistory_MaterialSupply]
GO
ALTER TABLE [dbo].[MaterialSupplier]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSupplier_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[MaterialSupplier] CHECK CONSTRAINT [FK_MaterialSupplier_Supplier]
GO
ALTER TABLE [dbo].[MaterialSupply]  WITH CHECK ADD  CONSTRAINT [FK_MaterialSupply_TypeMaterial] FOREIGN KEY([TypeMaterial])
REFERENCES [dbo].[TypeMaterial] ([id])
GO
ALTER TABLE [dbo].[MaterialSupply] CHECK CONSTRAINT [FK_MaterialSupply_TypeMaterial]
GO
ALTER TABLE [dbo].[MenagerSale]  WITH CHECK ADD  CONSTRAINT [FK_MenagerSale_Manager] FOREIGN KEY([idManager])
REFERENCES [dbo].[Manager] ([id])
GO
ALTER TABLE [dbo].[MenagerSale] CHECK CONSTRAINT [FK_MenagerSale_Manager]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductTypeID])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD  CONSTRAINT [FK_Production_Product] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Production] CHECK CONSTRAINT [FK_Production_Product]
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD  CONSTRAINT [FK_Production_Workshop] FOREIGN KEY([idWorkshop])
REFERENCES [dbo].[Workshop] ([idWorkshop])
GO
ALTER TABLE [dbo].[Production] CHECK CONSTRAINT [FK_Production_Workshop]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Agent]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Analyticks] FOREIGN KEY([id])
REFERENCES [dbo].[Analyticks] ([idStaff])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Analyticks]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_StaffSpec] FOREIGN KEY([id])
REFERENCES [dbo].[StaffSpec] ([idStaff])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_StaffSpec]
GO
USE [master]
GO
ALTER DATABASE [Draft] SET  READ_WRITE 
GO
