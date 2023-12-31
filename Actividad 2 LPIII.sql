USE [master]
GO
/****** Object:  Database [Kamil]    Script Date: 30/07/2023 11:28:48 p. m. ******/
CREATE DATABASE [Kamil]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kamil', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Kamil.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kamil_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Kamil_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Kamil] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kamil].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kamil] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kamil] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kamil] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kamil] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kamil] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kamil] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kamil] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kamil] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kamil] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kamil] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kamil] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kamil] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kamil] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kamil] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kamil] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kamil] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kamil] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kamil] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kamil] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kamil] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kamil] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kamil] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kamil] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Kamil] SET  MULTI_USER 
GO
ALTER DATABASE [Kamil] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kamil] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kamil] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kamil] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kamil] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Kamil] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Kamil] SET QUERY_STORE = ON
GO
ALTER DATABASE [Kamil] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Kamil]
GO
/****** Object:  Table [dbo].[Catalogo_Centro]    Script Date: 30/07/2023 11:28:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogo_Centro](
	[Num_Centro] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Ciudad] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Catalogo_Centro] PRIMARY KEY CLUSTERED 
(
	[Num_Centro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalogo_Puestos]    Script Date: 30/07/2023 11:28:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogo_Puestos](
	[Num_Puesto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Catalogo_Puestos] PRIMARY KEY CLUSTERED 
(
	[Num_Puesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directivos]    Script Date: 30/07/2023 11:28:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directivos](
	[Num_Directivo] [int] IDENTITY(1,1) NOT NULL,
	[Centro_Sup] [nvarchar](max) NOT NULL,
	[Prestación] [int] NOT NULL,
	[Num_Empleado] [int] NOT NULL,
 CONSTRAINT [PK_Directivos] PRIMARY KEY CLUSTERED 
(
	[Num_Directivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 30/07/2023 11:28:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Num_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[A_Paterno] [nvarchar](max) NOT NULL,
	[A_Materno] [nvarchar](max) NOT NULL,
	[Fecha_Nac] [date] NOT NULL,
	[RFC] [nvarchar](max) NOT NULL,
	[Num_Centro] [int] NOT NULL,
	[Num_Puesto] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Num_Empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Directivos]  WITH CHECK ADD  CONSTRAINT [FK_Directivos_Empleados] FOREIGN KEY([Num_Empleado])
REFERENCES [dbo].[Empleados] ([Num_Empleado])
GO
ALTER TABLE [dbo].[Directivos] CHECK CONSTRAINT [FK_Directivos_Empleados]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Catalogo_Centro] FOREIGN KEY([Num_Centro])
REFERENCES [dbo].[Catalogo_Centro] ([Num_Centro])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Catalogo_Centro]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Catalogo_Puestos] FOREIGN KEY([Num_Puesto])
REFERENCES [dbo].[Catalogo_Puestos] ([Num_Puesto])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Catalogo_Puestos]
GO
USE [master]
GO
ALTER DATABASE [Kamil] SET  READ_WRITE 
GO
