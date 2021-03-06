USE [master]
GO
/****** Object:  Database [ServicesCompany]    Script Date: 20.02.2022 23:06:55 ******/
CREATE DATABASE [ServicesCompany]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ServicesCompany', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SASIDKA\MSSQL\DATA\ServicesCompany.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ServicesCompany_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SASIDKA\MSSQL\DATA\ServicesCompany_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ServicesCompany] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ServicesCompany].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ServicesCompany] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ServicesCompany] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ServicesCompany] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ServicesCompany] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ServicesCompany] SET ARITHABORT OFF 
GO
ALTER DATABASE [ServicesCompany] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ServicesCompany] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ServicesCompany] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ServicesCompany] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ServicesCompany] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ServicesCompany] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ServicesCompany] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ServicesCompany] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ServicesCompany] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ServicesCompany] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ServicesCompany] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ServicesCompany] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ServicesCompany] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ServicesCompany] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ServicesCompany] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ServicesCompany] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ServicesCompany] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ServicesCompany] SET RECOVERY FULL 
GO
ALTER DATABASE [ServicesCompany] SET  MULTI_USER 
GO
ALTER DATABASE [ServicesCompany] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ServicesCompany] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ServicesCompany] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ServicesCompany] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ServicesCompany] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ServicesCompany] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ServicesCompany', N'ON'
GO
ALTER DATABASE [ServicesCompany] SET QUERY_STORE = OFF
GO
USE [ServicesCompany]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Birthday] [date] NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[GenderID] [int] NOT NULL,
	[LastEnter] [date] NOT NULL,
	[image] [image] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[ServiceId] [int] NOT NULL,
	[DateStart] [date] NULL,
	[DateFinished] [date] NULL,
	[Comments] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataSaleProduct]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSaleProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Purchased] [nvarchar](50) NOT NULL,
	[DatePurshasedPRoduct] [date] NOT NULL,
	[Quantity] [nvarchar](50) NOT NULL,
	[CleintD] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
 CONSTRAINT [PK_DataSaleProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[PasportSeries] [int] NOT NULL,
	[PasportNumber] [int] NOT NULL,
	[DivisionCode] [nvarchar](50) NOT NULL,
	[GenderID] [int] NOT NULL,
	[PaymantRatio] [nvarchar](50) NOT NULL,
	[Birthday] [date] NOT NULL,
	[SpecialistСategoryID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeClient]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeClient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[ClientID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeClient] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeGenderService]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeGenderService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GenderID] [int] NOT NULL,
	[ServiesID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeGenderService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flag]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Flag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[Specifications] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Weight] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Height] [int] NOT NULL,
	[Length] [int] NOT NULL,
	[MainImage] [image] NOT NULL,
	[FlagID] [int] NOT NULL,
	[BuyProductID] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Decription] [nvarchar](50) NULL,
	[Price] [money] NOT NULL,
	[Discount] [float] NULL,
	[Image] [image] NULL,
	[Duration] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpecialistCategory]    Script Date: 20.02.2022 23:06:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialistCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SpecialistCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (1, N'Голубев', N' Иосиф', N' Тимофеевич', CAST(N'1982-05-06' AS Date), N' 7(78)972-73-11 ', N' smcnabb@att.net', 1, CAST(N'2018-08-18' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (2, N'Ермакова Алла Мироновна', N' ', N' ', CAST(N'1976-01-22' AS Date), N' 7(06)437-13-73 ', N' whimsy@aol.com', 2, CAST(N'2017-02-09' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (3, N'Селиверстов Глеб Максимович', N' ', N' ', CAST(N'1999-06-20' AS Date), N' 7(20)554-28-68 ', N' jigsaw@sbcglobal.net', 1, CAST(N'2016-01-07' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (4, N'Агафонов', N' Юстиниан', N' Олегович', CAST(N'1997-02-02' AS Date), N' 7(303)810-28-78 ', N' staffelb@sbcglobal.net', 1, CAST(N'2016-06-08' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (5, N'Колобова', N' Злата', N' Романовна', CAST(N'1994-08-25' AS Date), N' 7(50)884-07-35 ', N' sinkou@aol.com', 2, CAST(N'2016-12-03' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (6, N'Сысоева Дарина Ярославовна', N' ', N' ', CAST(N'1982-02-03' AS Date), N' 7(0698)387-96-04 ', N' treit@verizon.net', 2, CAST(N'2016-05-13' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (7, N'Некрасов Варлам Михайлович', N' ', N' ', CAST(N'2000-11-12' AS Date), N' 7(019)258-06-35 ', N' dogdude@verizon.net', 1, CAST(N'2017-12-03' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (8, N'Крюков', N' Наум', N' Ильяович', CAST(N'1993-11-17' AS Date), N' 7(81)657-88-92 ', N' floxy@hotmail.com', 1, CAST(N'2017-02-01' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (9, N'Сидорова Татьяна Михайловна', N' ', N' ', CAST(N'1974-04-24' AS Date), N' 7(51)732-91-79 ', N' tbeck@mac.com', 2, CAST(N'2018-10-03' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (10, N'Трофимова Альжбета Якововна', N' ', N' ', CAST(N'1988-10-22' AS Date), N' 7(1084)658-92-95 ', N' gbacon@mac.com', 2, CAST(N'2017-09-21' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (11, N'Новиков Адриан Аркадьевич', N' ', N' ', CAST(N'1974-01-15' AS Date), N' 7(70)572-33-62 ', N' multiplx@verizon.net', 1, CAST(N'2018-11-23' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (12, N'Мишина Иветта Андреевна', N' ', N' ', CAST(N'2002-10-05' AS Date), N' 7(3926)244-81-96 ', N' aukjan@yahoo.com', 2, CAST(N'2016-01-24' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (13, N'Шестаков Геннадий Рубенович', N' ', N' ', CAST(N'2001-07-01' AS Date), N' 7(2066)037-11-60 ', N' tokuhirom@live.com', 1, CAST(N'2018-12-08' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (14, N'Зуев Матвей Иванович', N' ', N' ', CAST(N'1981-03-28' AS Date), N' 7(5383)893-04-66 ', N' brickbat@verizon.net', 1, CAST(N'2018-12-18' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (15, N'Турова Георгина Семёновна', N' ', N' ', CAST(N'1974-05-28' AS Date), N' 7(555)321-42-99 ', N' yruan@optonline.net', 2, CAST(N'2018-02-22' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (16, N'Анисимов Валентин Пантелеймонович', N' ', N' ', CAST(N'2000-12-10' AS Date), N' 7(700)326-70-24 ', N' aaribaud@hotmail.com', 1, CAST(N'2018-01-20' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (17, N'Анисимова', N' Тамара', N' Витальевна', CAST(N'1988-06-16' AS Date), N' 7(66)128-04-10 ', N' schwaang@mac.com', 2, CAST(N'2016-02-25' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (18, N'Колобов', N' Орест', N' Юлианович', CAST(N'2001-07-14' AS Date), N' 7(1680)508-58-26 ', N' parkes@verizon.net', 1, CAST(N'2017-01-01' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (19, N'Филатов Аристарх Дмитриевич', N' ', N' ', CAST(N'1989-05-29' AS Date), N' 7(696)235-29-24 ', N' hampton@att.net', 1, CAST(N'2017-01-11' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (20, N'Орлова Влада Мартыновна', N' ', N' ', CAST(N'1990-06-26' AS Date), N' 7(2506)433-38-35 ', N' rnelson@yahoo.ca', 2, CAST(N'2016-03-21' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (21, N'Алексеева', N' Элина', N' Матвеевна', CAST(N'2002-05-07' AS Date), N' 7(8086)245-64-81 ', N' pthomsen@verizon.net', 2, CAST(N'2018-03-28' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (22, N'Бобров Агафон Лаврентьевич', N' ', N' ', CAST(N'1995-07-29' AS Date), N' 7(2159)507-39-57 ', N' petersen@comcast.net', 1, CAST(N'2017-05-09' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (23, N'Бирюкова', N' Инара', N' Улебовна', CAST(N'1978-07-21' AS Date), N' 7(098)346-50-58 ', N' smpeters@hotmail.com', 2, CAST(N'2017-10-01' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (24, N'Панфилов Марк Рудольфович', N' ', N' ', CAST(N'1991-04-13' AS Date), N' 7(764)282-55-22 ', N' cremonini@optonline.net', 1, CAST(N'2016-02-23' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (25, N'Колесникова Алина Еремеевна', N' ', N' ', CAST(N'2001-04-19' AS Date), N' 7(74)977-39-71 ', N' gfxguy@outlook.com', 2, CAST(N'2017-01-18' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (26, N'Морозов Наум Валерьянович', N' ', N' ', CAST(N'1985-07-04' AS Date), N' 7(636)050-96-13 ', N' salesgeek@mac.com', 1, CAST(N'2016-05-02' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (27, N'Горбачёв Давид Тимурович', N' ', N' ', CAST(N'1983-05-22' AS Date), N' 7(53)602-85-41 ', N' hedwig@att.net', 1, CAST(N'2018-12-17' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (28, N'Васильев', N' Оскар', N' Богданович', CAST(N'1971-01-30' AS Date), N' 7(585)801-94-29 ', N' miturria@verizon.net', 1, CAST(N'2017-05-28' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (29, N'Ершова', N' Номи', N' Андреевна', CAST(N'2001-09-13' AS Date), N' 7(7757)315-90-99 ', N' miltchev@mac.com', 2, CAST(N'2016-06-30' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (30, N'Медведев', N' Святослав', N' Юлианович', CAST(N'1972-10-04' AS Date), N' 7(3520)435-21-20 ', N' hllam@comcast.net', 1, CAST(N'2018-10-13' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (31, N'Баранова', N' Эльмира', N' Дмитриевна', CAST(N'1977-01-15' AS Date), N' 7(9240)643-15-50 ', N' jgmyers@comcast.net', 2, CAST(N'2016-07-08' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (32, N'Попова Харита Якуновна', N' ', N' ', CAST(N'1997-12-16' AS Date), N' 7(335)386-81-06 ', N' firstpr@verizon.net', 2, CAST(N'2016-07-05' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (33, N'Кудряшов Аверкий Константинович', N' ', N' ', CAST(N'1991-07-26' AS Date), N' 7(88)732-96-30 ', N' nanop@msn.com', 1, CAST(N'2018-03-08' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (34, N'Горшкова', N' Марта', N' Иосифовна', CAST(N'2001-02-13' AS Date), N' 7(544)650-59-03 ', N' gbacon@mac.com', 2, CAST(N'2016-08-04' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (35, N'Кудрявцев', N' Богдан', N' Христофорович', CAST(N'1988-02-27' AS Date), N' 7(20)131-84-09 ', N' lukka@hotmail.com', 1, CAST(N'2016-10-07' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (36, N'Гусев', N' Яков', N' Авксентьевич', CAST(N'1995-12-10' AS Date), N' 7(0972)781-11-37 ', N' jdhedden@icloud.com', 1, CAST(N'2017-11-20' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (37, N'Крюкова', N' Авигея', N' Святославовна', CAST(N'2000-08-10' AS Date), N' 7(499)318-88-53 ', N' simone@gmail.com', 2, CAST(N'2018-01-03' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (38, N'Степанова', N' Амелия', N' Робертовна', CAST(N'1970-06-06' AS Date), N' 7(1217)441-28-42 ', N' rasca@hotmail.com', 2, CAST(N'2017-09-27' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (39, N'Суворова Божена Анатольевна', N' ', N' ', CAST(N'1981-03-09' AS Date), N' 7(347)895-86-57 ', N' attwood@aol.com', 2, CAST(N'2016-01-28' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (40, N'Борисов', N' Аввакум', N' Артемович', CAST(N'1974-04-25' AS Date), N' 7(2296)930-08-88 ', N' chlim@live.com', 1, CAST(N'2017-03-11' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (41, N'Бобылёв', N' Георгий', N' Витальевич', CAST(N'1983-12-19' AS Date), N' 7(88)685-13-51 ', N' csilvers@mac.com', 1, CAST(N'2018-04-06' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (42, N'Дроздов', N' Вольдемар', N' Артемович', CAST(N'1976-02-07' AS Date), N' 7(307)456-99-05 ', N' smpeters@me.com', 1, CAST(N'2017-07-18' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (43, N'Беляева Сабрина Федосеевна', N' ', N' ', CAST(N'1972-07-26' AS Date), N' 7(6580)534-32-58 ', N' agapow@gmail.com', 2, CAST(N'2017-06-14' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (44, N'Блохин', N' Пантелеймон', N' Феликсович', CAST(N'1978-03-06' AS Date), N' 7(9524)556-48-98 ', N' balchen@comcast.net', 1, CAST(N'2018-02-14' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (45, N'Шашкова Гелла Эдуардовна', N' ', N' ', CAST(N'1979-02-24' AS Date), N' 7(57)446-21-04 ', N' jadavis@mac.com', 2, CAST(N'2016-11-16' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (46, N'Калашников', N' Артур', N' Юрьевич', CAST(N'1972-12-13' AS Date), N' 7(147)947-47-21 ', N' oevans@aol.com', 1, CAST(N'2017-08-20' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (47, N'Корнилова Анэля Михайловна', N' ', N' ', CAST(N'1973-04-02' AS Date), N' 7(20)980-01-60 ', N' jonathan@aol.com', 2, CAST(N'2016-05-22' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (48, N'Гущина', N' Янита', N' Федоровна', CAST(N'1999-03-02' AS Date), N' 7(4544)716-68-96 ', N' lishoy@att.net', 2, CAST(N'2018-02-01' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (49, N'Волков Людвиг Витальевич', N' ', N' ', CAST(N'1977-12-27' AS Date), N' 7(8459)592-05-58 ', N' jrkorson@msn.com', 1, CAST(N'2016-04-27' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (50, N'Князев', N' Терентий', N' Валерьевич', CAST(N'1991-06-19' AS Date), N' 7(98)397-23-23 ', N' rjones@aol.com', 1, CAST(N'2018-06-25' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (51, N'Силин Гаянэ Анатольевич', N' ', N' ', CAST(N'1976-05-27' AS Date), N' 7(4547)615-22-69 ', N' multiplx@comcast.net', 1, CAST(N'2017-05-05' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (52, N'Казаков Дмитрий Русланович', N' ', N' ', CAST(N'1978-12-15' AS Date), N' 7(51)682-19-40 ', N' ozawa@verizon.net', 1, CAST(N'2016-05-21' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (53, N'Гусева', N' Роза', N' Дмитриевна', CAST(N'1999-02-13' AS Date), N' 7(23)064-51-84 ', N' martyloo@live.com', 2, CAST(N'2017-12-12' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (54, N'Мамонтова Марфа Мироновна', N' ', N' ', CAST(N'1984-10-19' AS Date), N' 7(38)095-64-18 ', N' rfoley@verizon.net', 2, CAST(N'2018-02-27' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (55, N'Галкин', N' Эрик', N' Онисимович', CAST(N'1975-01-18' AS Date), N' 7(759)873-77-39 ', N' snunez@verizon.net', 1, CAST(N'2016-07-19' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (56, N'Архипова Прасковья Валерьевна', N' ', N' ', CAST(N'1979-01-09' AS Date), N' 7(86)540-10-21 ', N' cgcra@live.com', 2, CAST(N'2018-07-23' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (57, N'Овчинникова Лаура Еремеевна', N' ', N' ', CAST(N'1992-04-03' AS Date), N' 7(85)829-33-79 ', N' carcus@yahoo.ca', 2, CAST(N'2018-11-24' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (58, N'Андреева Патрисия Валерьевна', N' ', N' ', CAST(N'1993-11-18' AS Date), N' 7(9648)953-81-26 ', N' jigsaw@aol.com', 2, CAST(N'2016-07-17' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (59, N'Авдеев Самуил Улебович', N' ', N' ', CAST(N'1996-07-04' AS Date), N' 7(3168)043-63-31 ', N' cliffordj@mac.com', 1, CAST(N'2016-02-11' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (60, N'Бурова Светлана Лукьевна', N' ', N' ', CAST(N'1979-01-04' AS Date), N' 7(358)173-82-21 ', N' wsnyder@aol.com', 2, CAST(N'2016-10-13' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (61, N'Ершов', N' Глеб', N' Федорович', CAST(N'1970-06-14' AS Date), N' 7(2608)298-40-82 ', N' sjava@aol.com', 1, CAST(N'2016-09-14' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (62, N'Игнатов Захар Павлович', N' ', N' ', CAST(N'1998-10-07' AS Date), N' 7(578)574-73-36 ', N' dieman@icloud.com', 1, CAST(N'2017-11-10' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (63, N'Комиссарова', N' Амалия', N' Робертовна', CAST(N'1971-08-18' AS Date), N' 7(22)647-46-32 ', N' jorgb@msn.com', 2, CAST(N'2017-08-04' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (64, N'Быков', N' Трофим', N' Константинович', CAST(N'1994-12-20' AS Date), N' 7(3414)460-12-05 ', N' jguyer@aol.com', 1, CAST(N'2016-04-17' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (65, N'Кузьмин', N' Леонтий', N' Валерьянович', CAST(N'2000-05-05' AS Date), N' 7(1340)148-90-68 ', N' msloan@hotmail.com', 1, CAST(N'2017-10-12' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (66, N'Белозёрова', N' Диана', N' Антоновна', CAST(N'1989-02-27' AS Date), N' 7(9900)174-59-87 ', N' dialworld@aol.com', 2, CAST(N'2017-01-30' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (67, N'Блинов', N' Евгений', N' Мэлсович', CAST(N'1994-01-05' AS Date), N' 7(0852)321-82-64 ', N' moxfulder@outlook.com', 1, CAST(N'2017-05-07' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (68, N'Лазарев Алексей Богданович', N' ', N' ', CAST(N'1977-03-10' AS Date), N' 7(0055)737-37-48 ', N' claesjac@me.com', 1, CAST(N'2017-01-02' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (69, N'Афанасьева Розалия Макаровна', N' ', N' ', CAST(N'1977-05-01' AS Date), N' 7(0661)413-23-32 ', N' malattia@hotmail.com', 2, CAST(N'2017-09-06' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (70, N'Дементьева Эдита Онисимовна', N' ', N' ', CAST(N'1975-09-17' AS Date), N' 7(198)922-28-76 ', N' frosal@hotmail.com', 2, CAST(N'2018-11-24' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (71, N'Калинин Петр Иванович', N' ', N' ', CAST(N'1993-09-08' AS Date), N' 7(90)316-07-17 ', N' aschmitz@hotmail.com', 1, CAST(N'2016-05-26' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (72, N'Андреев', N' Станислав', N' Максович', CAST(N'1975-10-10' AS Date), N' 7(02)993-91-28 ', N' budinger@mac.com', 1, CAST(N'2017-12-26' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (73, N'Киселёв', N' Устин', N' Яковлевич', CAST(N'1985-01-08' AS Date), N' 7(83)334-52-76 ', N' dalamb@verizon.net', 1, CAST(N'2018-06-21' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (74, N'Гордеев', N' Павел', N' Семенович', CAST(N'1984-09-06' AS Date), N' 7(5243)599-66-72 ', N' dawnsong@verizon.net', 1, CAST(N'2016-07-19' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (75, N'Горбачёва', N' Никки', N' Еремеевна', CAST(N'1987-04-21' AS Date), N' 7(94)789-69-20 ', N' chinthaka@att.net', 2, CAST(N'2018-08-16' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (76, N'Копылов', N' Касьян', N' Робертович', CAST(N'1983-08-04' AS Date), N' 7(5774)679-82-06 ', N' crobles@sbcglobal.net', 1, CAST(N'2018-03-18' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (77, N'Ефремов', N' Витольд', N' Авксентьевич', CAST(N'1975-12-02' AS Date), N' 7(93)922-14-03 ', N' kwilliams@yahoo.ca', 1, CAST(N'2018-04-09' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (78, N'Баранов', N' Михаил', N' Романович', CAST(N'1997-07-12' AS Date), N' 7(750)985-94-13 ', N' bigmauler@outlook.com', 1, CAST(N'2018-10-07' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (79, N'Дмитриева', N' Элина', N' Даниловна', CAST(N'1988-12-10' AS Date), N' 7(787)140-48-84 ', N' vmalik@live.com', 2, CAST(N'2017-02-11' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (80, N'Федотов', N' Осип', N' Анатольевич', CAST(N'1971-04-13' AS Date), N' 7(590)702-33-06 ', N' breegster@hotmail.com', 1, CAST(N'2018-07-23' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (81, N'Быкова', N' Тала', N' Георгьевна', CAST(N'2000-02-22' AS Date), N' 7(13)915-53-53 ', N' ganter@optonline.net', 2, CAST(N'2016-08-13' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (82, N'Дементьев Вадим Ростиславович', N' ', N' ', CAST(N'1993-07-10' AS Date), N' 7(79)330-46-15 ', N' jacks@aol.com', 1, CAST(N'2018-03-05' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (83, N'Евсеев', N' Макар', N' Васильевич', CAST(N'1977-09-13' AS Date), N' 7(2141)077-85-70 ', N' parsimony@sbcglobal.net', 1, CAST(N'2018-12-05' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (84, N'Абрамов Станислав Филатович', N' ', N' ', CAST(N'1989-05-18' AS Date), N' 7(6545)478-87-79 ', N' solomon@att.net', 1, CAST(N'2016-12-08' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (85, N'Артемьева', N' Лиза', N' Максимовна', CAST(N'1996-05-17' AS Date), N' 7(696)972-70-21 ', N' snunez@yahoo.ca', 2, CAST(N'2018-10-07' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (86, N'Кузьмина Дэнна Витальевна', N' ', N' ', CAST(N'1993-08-24' AS Date), N' 7(9940)977-45-73 ', N' nichoj@mac.com', 2, CAST(N'2016-03-27' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (87, N'Ефимова', N' Магда', N' Платоновна', CAST(N'1995-08-16' AS Date), N' 7(9261)386-15-92 ', N' rbarreira@me.com', 2, CAST(N'2017-08-01' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (88, N'Ефимов', N' Альберт', N' Проклович', CAST(N'1997-10-29' AS Date), N' 7(416)375-97-19 ', N' houle@live.com', 1, CAST(N'2018-06-21' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (89, N'Лазарева Эльвина Робертовна', N' ', N' ', CAST(N'1996-02-16' AS Date), N' 7(5564)609-81-37 ', N' ahuillet@comcast.net', 2, CAST(N'2018-04-11' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (90, N'Воронова Изабелла Вячеславовна', N' ', N' ', CAST(N'1999-09-24' AS Date), N' 7(17)433-44-98 ', N' kildjean@sbcglobal.net', 2, CAST(N'2017-12-21' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (91, N'Куликова Эвелина Вячеславовна', N' ', N' ', CAST(N'1997-11-14' AS Date), N' 7(0236)682-42-78 ', N' ilikered@hotmail.com', 2, CAST(N'2018-02-01' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (92, N'Егорова', N' Амалия', N' Дамировна', CAST(N'1999-09-28' AS Date), N' 7(7486)408-12-26 ', N' drezet@yahoo.com', 2, CAST(N'2016-06-30' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (93, N'Александров', N' Станислав', N' Эдуардович', CAST(N'1981-07-04' AS Date), N' 7(18)164-05-12 ', N' bigmauler@aol.com', 1, CAST(N'2018-11-08' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (94, N'Цветков', N' Демьян', N' Львович', CAST(N'1996-03-29' AS Date), N' 7(93)546-43-73 ', N' hauma@icloud.com', 1, CAST(N'2016-02-12' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (95, N'Устинова Юнона Валентиновна', N' ', N' ', CAST(N'1982-08-08' AS Date), N' 7(33)367-13-07', N' kempsonc@live.com', 2, CAST(N'2017-05-28' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (96, N'Костина Любава Авксентьевна', N' ', N' ', CAST(N'1972-07-13' AS Date), N' 7(6419)959-21-87 ', N' gordonjcp@hotmail.com', 2, CAST(N'2016-02-26' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (97, N'Смирнов Мартын Арсеньевич', N' ', N' ', CAST(N'1996-06-25' AS Date), N' 7(6251)589-02-43 ', N' haddawy@live.com', 1, CAST(N'2017-02-07' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (98, N'Федотова Сандра Владленовна', N' ', N' ', CAST(N'1985-03-29' AS Date), N' 7(126)195-25-86 ', N' penna@verizon.net', 2, CAST(N'2016-11-08' AS Date), NULL)
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (99, N'Журавлёв', N' Леонтий', N' Яковлевич', CAST(N'2000-03-02' AS Date), N' 7(4403)308-56-96 ', N' cmdrgravy@me.com', 1, CAST(N'2018-01-15' AS Date), NULL)
GO
INSERT [dbo].[Client] ([ID], [Surname], [Name], [Patronymic], [Birthday], [Phone], [Email], [GenderID], [LastEnter], [image]) VALUES (100, N'Большаков Вадим Данилович', N' ', N' ', CAST(N'1970-05-15' AS Date), N' 7(386)641-13-37 ', N' uncle@gmail.com', 1, CAST(N'2018-08-04' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 

INSERT [dbo].[Gender] ([ID], [Title]) VALUES (1, N'Мужской')
INSERT [dbo].[Gender] ([ID], [Title]) VALUES (2, N'Женский')
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (1, N'Снятие лака', NULL, 1240.0000, NULL, NULL, N' 2100 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (2, N'Наращивание ногтей гелем', NULL, 1540.0000, 0.1, NULL, N' 40 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (3, N'Ультразвуковой пилинг', NULL, 1440.0000, 0.2, NULL, N' 2700 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (4, N'Спортивный массаж', NULL, 1650.0000, 0.15, NULL, N' 1800 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (5, N'Массаж ЖИВА', NULL, 2330.0000, 0.25, NULL, N' 55 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (6, N'Комбинированный маникюр', NULL, 2390.0000, NULL, NULL, N' 60 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (7, N'Урок в группе испанского языка для школьников', NULL, 1910.0000, NULL, NULL, N' 7200 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (8, N'Стрижка челки', NULL, 1930.0000, 0.1, NULL, N' 35 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (9, N'Озонотерапия', NULL, 1740.0000, 0.2, NULL, N' 2100 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (10, N'Оформление бровей', NULL, 2280.0000, NULL, NULL, N' 2100 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (11, N'Окрашивание бровей', NULL, 1120.0000, 0.1, NULL, N' 3600 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (12, N'Моментальный лифтинг', NULL, 2020.0000, NULL, NULL, N' 50 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (13, N'Гавайский массаж Ломи-Ломи', NULL, 1040.0000, 0.15, NULL, N' 2100 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (14, N'Депиляция воском', NULL, 2330.0000, 0.15, NULL, N' 30 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (15, N'Покрытие ногтей', NULL, 2410.0000, 0.15, NULL, N' 2400 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (16, N'Полировка с маслом', NULL, 1280.0000, NULL, NULL, N' 1200 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (17, N'Художественное оформление ресниц', NULL, 2040.0000, NULL, NULL, N' 50 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (18, N'Классический маникюр', NULL, 1680.0000, 0.2, NULL, N' 3300 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (19, N'Лечебное покрытие ногтей', NULL, 1220.0000, NULL, NULL, N' 1800 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (20, N'Татуаж', NULL, 1330.0000, 0.2, NULL, N' 3600 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (21, N'Инъекционные методики', NULL, 1660.0000, NULL, NULL, N' 2400 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (22, N'Эстетическая лазерная шлифовка кожи', NULL, 1750.0000, 0.25, NULL, N' 40 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (23, N'Мезотерапия', NULL, 2040.0000, 0.2, NULL, N' 40 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (24, N'Наращивание ресниц кукольного эффекта', NULL, 2120.0000, NULL, NULL, N' 2100 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (25, N'Детская стрижка', NULL, 2330.0000, 0.2, NULL, N' 2100 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (26, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', NULL, 1480.0000, 0.2, NULL, N' 90 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (27, N'Наращивание ресниц лисьего эффекта', NULL, 1370.0000, 0.25, NULL, N' 1800 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (28, N'Пирсинг', NULL, 1330.0000, NULL, NULL, N' 55 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (29, N'Замена масла в вариаторе', NULL, 4720.0000, 0.05, NULL, N' 2 час.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (30, N'Покраска ресниц', NULL, 2400.0000, NULL, NULL, N' 1800 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (31, N'Микротоковая терапия', NULL, 2410.0000, 0.05, NULL, N' 2700 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (32, N'Европейский маникюр', NULL, 1990.0000, 0.05, NULL, N' 3600 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (33, N'Консультация врача-косметолога', NULL, 2350.0000, 0.05, NULL, N' 3600 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (34, N'Полировка ногтей', NULL, 2310.0000, 0.15, NULL, N' 50 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (35, N'Декорирование ресниц стразами', NULL, 1920.0000, 0.15, NULL, N' 50 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (36, N'Химический пилинг', NULL, 1880.0000, 0.15, NULL, N' 1500 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (37, N'Мужская стрижка', NULL, 1690.0000, NULL, NULL, N' 3000 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (38, N'Укрепление ногтей гелем', NULL, 1260.0000, NULL, NULL, N' 45 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (39, N'Стрижка с покраской', NULL, 2300.0000, 0.1, NULL, N' 1500 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (40, N'Прессотерапия', NULL, 2350.0000, NULL, NULL, N' 2400 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (41, N'Наращивание ресниц', NULL, 1430.0000, 0.05, NULL, N' 40 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (42, N'Удаление доброкачественных образований кожи', NULL, 1910.0000, NULL, NULL, N' 900 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (43, N'Коррекция нарощенных ресниц', NULL, 1310.0000, 0.05, NULL, N' 45 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (44, N'Фонофорез лица', NULL, 1120.0000, 0.05, NULL, N' 1200 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (45, N'Стрижка бороды машинкой', NULL, 1750.0000, 0.1, NULL, N' 2700 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (46, N'Шугаринг', NULL, 1400.0000, NULL, NULL, N' 1800 сек.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (47, N'Реконструкция и лечение волос и кожи головы', NULL, 2360.0000, 0.15, NULL, N' 55 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (48, N'Макияж', NULL, 2470.0000, 0.2, NULL, N' 30 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (49, N'ИК-сауна', NULL, 1160.0000, 0.2, NULL, N' 45 мин.')
INSERT [dbo].[Service] ([ID], [Title], [Decription], [Price], [Discount], [Image], [Duration]) VALUES (50, N'Моделирование ресниц', NULL, 2492.0000, NULL, NULL, N' 2140 рублей')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO
ALTER TABLE [dbo].[DataSaleProduct]  WITH CHECK ADD  CONSTRAINT [FK_DataSaleProduct_Client] FOREIGN KEY([CleintD])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[DataSaleProduct] CHECK CONSTRAINT [FK_DataSaleProduct_Client]
GO
ALTER TABLE [dbo].[DataSaleProduct]  WITH CHECK ADD  CONSTRAINT [FK_DataSaleProduct_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[DataSaleProduct] CHECK CONSTRAINT [FK_DataSaleProduct_Service]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_EmployeeGenderService] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[EmployeeGenderService] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_EmployeeGenderService]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Gender]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_SpecialistCategory] FOREIGN KEY([SpecialistСategoryID])
REFERENCES [dbo].[SpecialistCategory] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_SpecialistCategory]
GO
ALTER TABLE [dbo].[EmployeeClient]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[EmployeeClient] CHECK CONSTRAINT [FK_EmployeeClient_Client]
GO
ALTER TABLE [dbo].[EmployeeClient]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeClient_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[EmployeeClient] CHECK CONSTRAINT [FK_EmployeeClient_Employee]
GO
ALTER TABLE [dbo].[EmployeeGenderService]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeGenderService_Gender] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[EmployeeGenderService] CHECK CONSTRAINT [FK_EmployeeGenderService_Gender]
GO
ALTER TABLE [dbo].[EmployeeGenderService]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeGenderService_Service] FOREIGN KEY([ServiesID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[EmployeeGenderService] CHECK CONSTRAINT [FK_EmployeeGenderService_Service]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_DataSaleProduct] FOREIGN KEY([BuyProductID])
REFERENCES [dbo].[DataSaleProduct] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_DataSaleProduct]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Flag] FOREIGN KEY([FlagID])
REFERENCES [dbo].[Flag] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Flag]
GO
USE [master]
GO
ALTER DATABASE [ServicesCompany] SET  READ_WRITE 
GO
