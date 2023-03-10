USE [DuLieu]
GO
/****** Object:  Table [dbo].[tblChatLieu]    Script Date: 18/11/2019 7:45:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChatLieu](
	[MaChatLieu] [nvarchar](50) NOT NULL,
	[TenChatLieu] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHang]    Script Date: 18/11/2019 7:45:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHang](
	[MaHang] [nvarchar](50) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[MaChatLieu] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [float] NULL,
	[GiaBan] [float] NULL,
 CONSTRAINT [PK_tblHangHoa] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL01', N'Vải')
INSERT [dbo].[tblChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL02', N'Giấy')
INSERT [dbo].[tblChatLieu] ([MaChatLieu], [TenChatLieu]) VALUES (N'CL03', N'Da')
INSERT [dbo].[tblHang] ([MaHang], [TenHang], [MaChatLieu], [SoLuong], [GiaNhap], [GiaBan]) VALUES (N'H01', N'a', N'CL01', 100000, 200000, 10)
INSERT [dbo].[tblHang] ([MaHang], [TenHang], [MaChatLieu], [SoLuong], [GiaNhap], [GiaBan]) VALUES (N'H02', N'b', N'CL03', 100000, 200000, 10)
INSERT [dbo].[tblHang] ([MaHang], [TenHang], [MaChatLieu], [SoLuong], [GiaNhap], [GiaBan]) VALUES (N'H03', N'cb', N'CL02', 100000, 200000, 10)
/****** Object:  Trigger [dbo].[Trigger1]    Script Date: 18/11/2019 7:45:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Trigger1]
	ON [dbo].[tblHang]
	FOR INSERT, UPDATE
	AS
	BEGIN
		declare @macl nvarchar(50), @tencl nvarchar(50), @mahang nvarchar(50)
		select @mahang=MaHang ,@tencl=MaChatLieu from inserted
		select @macl=MaChatLieu from tblChatLieu where TenChatLieu=@tencl
		update tblHang set MaChatLieu=@macl where MaHang=@mahang
	END
GO
ALTER TABLE [dbo].[tblHang] ENABLE TRIGGER [Trigger1]
GO
