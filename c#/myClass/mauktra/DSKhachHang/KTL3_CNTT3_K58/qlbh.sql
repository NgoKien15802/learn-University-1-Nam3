USE [master]
GO
/****** Object:  Database [Quanlybanhang]    Script Date: 21-11-2019 10:32:59 PM ******/
CREATE DATABASE [Quanlybanhang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Quanlybanhang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.LUYENCT\MSSQL\DATA\Quanlybanhang.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Quanlybanhang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.LUYENCT\MSSQL\DATA\Quanlybanhang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Quanlybanhang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quanlybanhang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quanlybanhang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quanlybanhang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quanlybanhang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quanlybanhang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quanlybanhang] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quanlybanhang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Quanlybanhang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quanlybanhang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quanlybanhang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quanlybanhang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quanlybanhang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quanlybanhang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quanlybanhang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quanlybanhang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quanlybanhang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Quanlybanhang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quanlybanhang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quanlybanhang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quanlybanhang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quanlybanhang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quanlybanhang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quanlybanhang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quanlybanhang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Quanlybanhang] SET  MULTI_USER 
GO
ALTER DATABASE [Quanlybanhang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quanlybanhang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quanlybanhang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quanlybanhang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Quanlybanhang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Quanlybanhang]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 21-11-2019 10:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[Id] [int] NOT NULL,
	[gt] [bit] NOT NULL,
	[ns] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChatlieu]    Script Date: 21-11-2019 10:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChatlieu](
	[MaChatLieu] [nvarchar](50) NOT NULL,
	[TenChatLieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblChatlieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblChitietHDBan]    Script Date: 21-11-2019 10:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChitietHDBan](
	[MaHDBan] [nvarchar](50) NOT NULL,
	[Mahang] [nvarchar](50) NOT NULL,
	[Soluong] [float] NULL,
	[Dongia] [float] NULL,
	[Giamgia] [float] NULL,
	[Thanhtien] [float] NULL,
 CONSTRAINT [PK_tblChitietHDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC,
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDMHang]    Script Date: 21-11-2019 10:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDMHang](
	[MaHang] [nchar](10) NOT NULL,
	[TenHang] [nchar](10) NOT NULL,
	[MaChatLieu] [nchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaNhap] [float] NOT NULL,
	[GiaBan] [float] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHang]    Script Date: 21-11-2019 10:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHang](
	[Mahang] [nvarchar](50) NOT NULL,
	[Tenhang] [nvarchar](50) NULL,
	[Machatlieu] [nvarchar](50) NULL,
	[Soluong] [float] NULL,
	[Dongianhap] [float] NULL,
	[Dongiaban] [float] NULL,
	[Anh] [nvarchar](200) NULL,
	[Ghichu] [nvarchar](200) NULL,
 CONSTRAINT [PK_tblHang] PRIMARY KEY CLUSTERED 
(
	[Mahang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHDBan]    Script Date: 21-11-2019 10:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHDBan](
	[MaHDBan] [nvarchar](50) NOT NULL,
	[Manhanvien] [nvarchar](50) NULL,
	[Ngayban] [datetime] NULL,
	[Makhach] [nvarchar](50) NULL,
	[Tongtien] [float] NULL,
 CONSTRAINT [PK_tblHDBan] PRIMARY KEY CLUSTERED 
(
	[MaHDBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhach]    Script Date: 21-11-2019 10:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhach](
	[Makhach] [nvarchar](50) NOT NULL,
	[Tenkhach] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Dienthoai] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblKhach] PRIMARY KEY CLUSTERED 
(
	[Makhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhanvien]    Script Date: 21-11-2019 10:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanvien](
	[Manhanvien] [nvarchar](50) NOT NULL,
	[Tennhanvien] [nvarchar](50) NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Dienthoai] [nvarchar](50) NULL,
	[Ngaysinh] [datetime] NULL,
 CONSTRAINT [PK_tblNhanvien] PRIMARY KEY CLUSTERED 
(
	[Manhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblChitietHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChitietHDBan_tblHang] FOREIGN KEY([Mahang])
REFERENCES [dbo].[tblHang] ([Mahang])
GO
ALTER TABLE [dbo].[tblChitietHDBan] CHECK CONSTRAINT [FK_tblChitietHDBan_tblHang]
GO
ALTER TABLE [dbo].[tblChitietHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblChitietHDBan_tblHDBan] FOREIGN KEY([MaHDBan])
REFERENCES [dbo].[tblHDBan] ([MaHDBan])
GO
ALTER TABLE [dbo].[tblChitietHDBan] CHECK CONSTRAINT [FK_tblChitietHDBan_tblHDBan]
GO
ALTER TABLE [dbo].[tblHang]  WITH CHECK ADD  CONSTRAINT [FK_tblHang_tblChatlieu] FOREIGN KEY([Machatlieu])
REFERENCES [dbo].[tblChatlieu] ([MaChatLieu])
GO
ALTER TABLE [dbo].[tblHang] CHECK CONSTRAINT [FK_tblHang_tblChatlieu]
GO
ALTER TABLE [dbo].[tblHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblHDBan_tblKhach] FOREIGN KEY([Makhach])
REFERENCES [dbo].[tblKhach] ([Makhach])
GO
ALTER TABLE [dbo].[tblHDBan] CHECK CONSTRAINT [FK_tblHDBan_tblKhach]
GO
ALTER TABLE [dbo].[tblHDBan]  WITH CHECK ADD  CONSTRAINT [FK_tblHDBan_tblNhanvien] FOREIGN KEY([Manhanvien])
REFERENCES [dbo].[tblNhanvien] ([Manhanvien])
GO
ALTER TABLE [dbo].[tblHDBan] CHECK CONSTRAINT [FK_tblHDBan_tblNhanvien]
GO
USE [master]
GO
ALTER DATABASE [Quanlybanhang] SET  READ_WRITE 
GO
