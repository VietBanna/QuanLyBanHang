USE [master]
GO
/****** Object:  Database [SupperMarkett]    Script Date: 12/4/2020 1:54:18 PM ******/
CREATE DATABASE [SupperMarkett]
GO
ALTER DATABASE [SupperMarkett] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SupperMarkett].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SupperMarkett] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SupperMarkett] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SupperMarkett] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SupperMarkett] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SupperMarkett] SET ARITHABORT OFF 
GO
ALTER DATABASE [SupperMarkett] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SupperMarkett] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SupperMarkett] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SupperMarkett] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SupperMarkett] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SupperMarkett] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SupperMarkett] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SupperMarkett] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SupperMarkett] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SupperMarkett] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SupperMarkett] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SupperMarkett] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SupperMarkett] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SupperMarkett] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SupperMarkett] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SupperMarkett] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SupperMarkett] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SupperMarkett] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SupperMarkett] SET  MULTI_USER 
GO
ALTER DATABASE [SupperMarkett] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SupperMarkett] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SupperMarkett] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SupperMarkett] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SupperMarkett] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SupperMarkett] SET QUERY_STORE = OFF
GO
USE [SupperMarkett]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/4/2020 1:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayBan] [date] NULL,
	[GhiChu] [varchar](100) NULL,
	[ThanhTien] [int] NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 12/4/2020 1:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[MaHD] [int] NULL,
	[TenSP] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuong] [int] NULL,
	[MaSP] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/4/2020 1:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/4/2020 1:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[Ma] [varchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanSu]    Script Date: 12/4/2020 1:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanSu](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[NgaySinh] [varchar](50) NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [varchar](15) NULL,
	[ChucVu] [nvarchar](20) NOT NULL,
	[Thuong] [int] NULL,
	[Luong] [int] NULL,
	[Anh] [nvarchar](100) NULL,
	[LuongCb] [int] NULL,
	[PhuCap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapSP]    Script Date: 12/4/2020 1:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapSP](
	[MaSP] [varchar](50) NULL,
	[TenSP] [nvarchar](50) NOT NULL,
	[MaNCC] [nvarchar](50) NULL,
	[NgayNhap] [varchar](50) NULL,
	[SoLuong] [int] NOT NULL,
	[GiaNhap] [int] NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
	[TenNCC] [varchar](50) NULL,
	[Ma] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhapSpBaoQuat]    Script Date: 12/4/2020 1:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhapSpBaoQuat](
	[MaPhieu] [int] NOT NULL,
	[NgayNhap] [date] NULL,
	[ThanhTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/4/2020 1:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Ma] [varchar](50) NOT NULL,
	[Ten] [nvarchar](50) NOT NULL,
	[MaNCC] [varchar](50) NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[DonVi] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/4/2020 1:54:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[Ten] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[ChucVu] [nvarchar](50) NULL,
	[TenDayDu] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Ten] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([Ma], [MaKH], [NgayBan], [GhiChu], [ThanhTien], [TenNhanVien]) VALUES (30, 36, CAST(N'2020-04-23' AS Date), NULL, 600000, N'Phạm Minh Hiếu')
INSERT [dbo].[HoaDon] ([Ma], [MaKH], [NgayBan], [GhiChu], [ThanhTien], [TenNhanVien]) VALUES (31, 37, CAST(N'2020-04-23' AS Date), NULL, 20030, N'Phạm Minh Hiếu')
INSERT [dbo].[HoaDon] ([Ma], [MaKH], [NgayBan], [GhiChu], [ThanhTien], [TenNhanVien]) VALUES (32, 38, CAST(N'2020-04-23' AS Date), NULL, 550000, N'Phạm Minh Hiếu')
INSERT [dbo].[HoaDon] ([Ma], [MaKH], [NgayBan], [GhiChu], [ThanhTien], [TenNhanVien]) VALUES (33, 39, CAST(N'2020-04-23' AS Date), NULL, 2430000, N'Phạm Văn Đức')
INSERT [dbo].[HoaDon] ([Ma], [MaKH], [NgayBan], [GhiChu], [ThanhTien], [TenNhanVien]) VALUES (34, 40, CAST(N'2020-04-23' AS Date), NULL, 2400000, N'Phạm Văn Đức')
INSERT [dbo].[HoaDon] ([Ma], [MaKH], [NgayBan], [GhiChu], [ThanhTien], [TenNhanVien]) VALUES (35, 41, CAST(N'2020-04-23' AS Date), NULL, 100000, N'Chu Thanh Dung ')
INSERT [dbo].[HoaDon] ([Ma], [MaKH], [NgayBan], [GhiChu], [ThanhTien], [TenNhanVien]) VALUES (36, 42, CAST(N'2020-04-23' AS Date), NULL, 7500000, N'Chu Thanh Dung ')
INSERT [dbo].[HoaDon] ([Ma], [MaKH], [NgayBan], [GhiChu], [ThanhTien], [TenNhanVien]) VALUES (37, 43, CAST(N'2020-05-08' AS Date), NULL, 103000, N'Phạm Minh Hiếu')
INSERT [dbo].[HoaDon] ([Ma], [MaKH], [NgayBan], [GhiChu], [ThanhTien], [TenNhanVien]) VALUES (38, 44, CAST(N'2020-09-22' AS Date), NULL, 4915000, N'Ph?m Minh Hi?u ')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (30, N'Mì tôm hảo hảo', 200000, 3, N'6')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (31, N'Dầu ăn Neptune', 30, 1, N'DA93')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (37, N'Vở ghi', 5000, 5, N'11')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (37, N'Dầu ăn Neptune', 19000, 2, N'DA93')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (37, N'Bột giặt nhiệt Aba', 20000, 2, N'B122')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (31, N'Bột giặt nhiệt Aba', 20000, 1, N'B122')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (32, N'Sữa nước', 400000, 1, N'1')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (32, N'Vở ghi', 5000, 10, N'11')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (32, N'Thước kẻ', 20000, 5, N'12')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (33, N'Lò vi sóng', 2430000, 1, N'10')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (34, N'Bia Hà Nội', 2400000, 1, N'16')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (35, N'Muối chấm', 20000, 3, N'7')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (35, N'Bột giặt nhiệt Aba', 20000, 2, N'B122')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (36, N'Máy giặt', 7500000, 1, N'9')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (38, N'Lò vi sóng', 2430000, 2, N'10')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (38, N'Vở ghi', 5000, 3, N'11')
INSERT [dbo].[HoaDonChiTiet] ([MaHD], [TenSP], [Gia], [SoLuong], [MaSP]) VALUES (38, N'Thước kẻ', 20000, 2, N'12')
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (1, N'Nguyễn Trọng Tuấn', N'Thanh Ba, Phú Thọ', N'0971.134.462')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (2, N'Ngô Bá Khá', N'Lập Thạch, Vĩnh Phúc', N'0981.132.785')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (3, N'Nguyễn Văn Nam', N'Tam Nông, Phú Thọ', N'0981.003.531')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (4, N'Trần Thị Thùy', N'Sông Lô, Vĩnh Phúc', N'0981.009.446')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (5, N'Hồ Thị Mai', N'Yên Lạc, Vĩnh Phúc', N'0981.109.120')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (6, N'Nguyễn Thị Thúy', N'Mai Châu, Hòa Bình', N'0981.775.962')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (7, N'Nguyễn Ngọc Ánh', N'Phù Cừ, Hưng Yên', N'0985.126.471')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (8, N'Trần Văn Long', N'Kim Động, Hưng Yên', N'0971.913.834')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (9, N'Nguyễn Văn Tuân', N'Mỹ Hào, Hưng Yên', N'0985.975.343')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (10, N'Nguyễn Thị Yến', N'Đông Triều, Quảng Ninh', N'0981.188.547')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (11, N'Nguyễn Thị Hảo', N'Kim Bảng, Hà Nam', N'0981.112.125')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (12, N'Trịnh Thành Trung', N'Thanh Miện, Hải Dương', N'0984.125.772')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (13, N'Đào Vũ Hải Vân', N'Phú Thiện, Gia Lai', N'0971.152.231')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (14, N'Nguyễn Thị Khánh Huyền', N'Ninh Sơn, Ninh Thuận', N'0991.125.112')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (15, N'Nguyễn Thị Hiền', N'Đông Anh, Hà Nội', N'0912.092.401')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (16, N'Bùi Quang Sơn', N'Sóc Sơn, Hà Nội', N'0951.072.765')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (17, N'Bùi Kim Thiện', N'Thạch Thất, Hà Nội', N'0998.190.008')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (18, N'Trần Văn Lâm', N'Gia Lâm, Hà Nội', N'0908.541.861')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (19, N'Nguyễn Văn Khang', N'Mê Linh, Hà Nội', N'0984.009.402')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (20, N'Vũ Đức Long', N'Thanh Trì, Hà Nội', N'0985.885.912')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (36, N'Hoàng Văn Cường', N'Minh Lãng', N'0988.323.222')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (37, N'Chu Thanh Vân', N'Tân Hoà', N'0922.323.512')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (38, N'Trần Lam Khánh', N'Vũ Tây', N'0988.333.123')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (39, N'Huỳnh văn Tá', N'Long An', N'0988.231.250')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (40, N'Vũ Ngọc Thạch', N'Minh Khai', N'03912.323.709')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (41, N'Văn Mai Hương', N'Hùng Tiến', N'0901.332.123')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (42, N'Phí Minh Duy', N'Vũ Vân', N'0983.333.423')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (43, N'Phạm CÔng tú', N'Khánh Hoà', N'12345689')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (44, N'abc', N'xyz', N'jqk')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'AC', N'AceCook', N'Đống Đa, Hà Nội', N'02838.150.968')
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'Bia', N'Bia Đức Thắng', N'Ba Đình , Hà Nội', N'0986.773.534')
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'EL', N'Electrolux', N'Phú Bình, Huế', N'1800.588.899')
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'HH', N'Hồng Hà', N'Hoàn Kiếm, Hà Nội', N'02422.432.603')
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'HT', N'Hải Tiến', N'Móng Cái, Quảng Ninh', N'0243.6754.675')
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'NGK', N'Nước giải khát', N'Hải Dương', N'0983.222.232')
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'PS', N'Panasonic', N'Đông Anh, Hà Nội', N'04395.501.113')
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'SC', N'Con Bò Cười', N'Thủ Dầu Một, Bình Dương', N'1800.111.078')
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'SS', N'SamSung', N'Yên Phong, Bắc Ninh', N'0904.193.337')
INSERT [dbo].[NhaCungCap] ([Ma], [Ten], [DiaChi], [SDT]) VALUES (N'VM', N'Vinamilk', N'Tân Phú, Hồ Chí Minh', N'02854.155.555')
SET IDENTITY_INSERT [dbo].[NhanSu] ON 

INSERT [dbo].[NhanSu] ([Ma], [Ten], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Thuong], [Luong], [Anh], [LuongCb], [PhuCap]) VALUES (1, N'Phạm Mạnh Cường', N'25/1/1999', N'Vũ Thư, Thái Bình', N'0986.578.599', N'Quản lý', 200000, 2100000, N'D:\gallery\MineCraft\234828.jpg', 1400000, 500000)
INSERT [dbo].[NhanSu] ([Ma], [Ten], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Thuong], [Luong], [Anh], [LuongCb], [PhuCap]) VALUES (2, N'Phạm Minh Hiếu', N'28/10/1999', N'Chương Mỹ, Hà Nội', N'0347.517.982', N'Bán hàng', 300000, 7000000, N'D:\gallery\MineCraft\234829.jpg', 1350000, 300000)
INSERT [dbo].[NhanSu] ([Ma], [Ten], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Thuong], [Luong], [Anh], [LuongCb], [PhuCap]) VALUES (3, N'Vương Quốc Thịnh', N'12/4/1999', N'Hiệp Hoà', N'0193.381.931', N'Bán hàng', 300000, 8500000, N'D:\gallery\MineCraft\234831.jpg', 1350000, 300000)
INSERT [dbo].[NhanSu] ([Ma], [Ten], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Thuong], [Luong], [Anh], [LuongCb], [PhuCap]) VALUES (4, N'Mai Thanh Toán', N'20/11/1996', N'Thanh Ba, Phú Thọ', N'0986.123.259', N'Bán hàng', 300000, 9200000, N'D:\gallery\MineCraft\234833.jpg', 1350000, 300000)
INSERT [dbo].[NhanSu] ([Ma], [Ten], [NgaySinh], [DiaChi], [SDT], [ChucVu], [Thuong], [Luong], [Anh], [LuongCb], [PhuCap]) VALUES (5, N'Đào Công Sự', N'16/3/2001', N'Thường Tín, Hà Nội', N'0982.459.519', N'Quản kho', 150000, 6700000, N'D:\gallery\MineCraft\234837.jpg', 1350000, 250000)
SET IDENTITY_INSERT [dbo].[NhanSu] OFF
INSERT [dbo].[NhapSP] ([MaSP], [TenSP], [MaNCC], [NgayNhap], [SoLuong], [GiaNhap], [GhiChu], [TenNCC], [Ma]) VALUES (NULL, N'Lò vi sóng', N'EL', NULL, 3, 1000000, N'cái', N'Electrolux', 6)
INSERT [dbo].[NhapSP] ([MaSP], [TenSP], [MaNCC], [NgayNhap], [SoLuong], [GiaNhap], [GhiChu], [TenNCC], [Ma]) VALUES (NULL, N'Tẩy', N'HH', NULL, 20, 1000, N'cái', N'H?ng Hà', 6)
INSERT [dbo].[NhapSP] ([MaSP], [TenSP], [MaNCC], [NgayNhap], [SoLuong], [GiaNhap], [GhiChu], [TenNCC], [Ma]) VALUES (NULL, N'Phô mai', N'SC', NULL, 20, 10000, N'h?p', N'Con Bò Cu?i', 6)
INSERT [dbo].[NhapSpBaoQuat] ([MaPhieu], [NgayNhap], [ThanhTien]) VALUES (1, CAST(N'2020-04-03' AS Date), 5000000)
INSERT [dbo].[NhapSpBaoQuat] ([MaPhieu], [NgayNhap], [ThanhTien]) VALUES (2, CAST(N'2020-02-21' AS Date), 7000000)
INSERT [dbo].[NhapSpBaoQuat] ([MaPhieu], [NgayNhap], [ThanhTien]) VALUES (3, CAST(N'2020-02-29' AS Date), 180000)
INSERT [dbo].[NhapSpBaoQuat] ([MaPhieu], [NgayNhap], [ThanhTien]) VALUES (4, CAST(N'2020-03-15' AS Date), 220000)
INSERT [dbo].[NhapSpBaoQuat] ([MaPhieu], [NgayNhap], [ThanhTien]) VALUES (5, CAST(N'2020-04-16' AS Date), 8100000)
INSERT [dbo].[NhapSpBaoQuat] ([MaPhieu], [NgayNhap], [ThanhTien]) VALUES (6, CAST(N'2020-04-23' AS Date), 220000)
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'1', N'Sữa nước', N'VM', 147, 400000, N'thùng')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'10', N'Lò vi sóng', N'EL', 20, 2430000, N'cái')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'11', N'Vở ghi', N'HT', 382, 5000, N'quyển')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'12', N'Thước kẻ', N'HH', 96, 20000, N'cái')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'13', N'Tẩy', N'HH', 5003, 5000, N'cái')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'14', N'Phô mai', N'SC', 60, 45000, N'hộp')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'15', N'Điện thoại SamSung', N'SS', 12, 7999000, N'chiếc')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'16', N'Bia Hà Nội', N'Bia', 199, 2400000, N'két')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'17', N'Bia heniken', N'Bia', 50, 250000, N'két')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'18', N'7Up', N'NGK', 15000, 15000, N'chai')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'2', N'Sữa chua vinamilk', N'VM', 470, 12000, N'vỉ')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'3', N'Sữa bột Ensure', N'VM', 230, 130000, N'hộp')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'4', N'CocaCola', N'VM', 500, 15000, N'chai')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'5', N'Phô mai', N'VM', 60, 34000, N'chiếc')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'6', N'Mì tôm hảo hảo', N'AC', 317, 200000, N'thùng')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'7', N'Muối chấm', N'AC', 447, 20000, N'lọ')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'8', N'Tủ lạnh', N'EL', 25, 7800000, N'cái')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'9', N'Máy giặt', N'EL', 14, 7500000, N'cái')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'B122', N'Bột giặt nhiệt Aba', N'AC', 195, 20000, N'túi')
INSERT [dbo].[SanPham] ([Ma], [Ten], [MaNCC], [SoLuong], [Gia], [DonVi]) VALUES (N'DA93', N'Dầu ăn Neptune', N'AC', 47, 19000, N'chai')
INSERT [dbo].[TaiKhoan] ([Ten], [MatKhau], [ChucVu], [TenDayDu]) VALUES (N'admin', N'1', N'Quản lý', N'Phạm Mạnh Cường')
INSERT [dbo].[TaiKhoan] ([Ten], [MatKhau], [ChucVu], [TenDayDu]) VALUES (N'cuong99tb', N'anhs2tham', N'Bán hàng', N'Phạm Văn Đức')
INSERT [dbo].[TaiKhoan] ([Ten], [MatKhau], [ChucVu], [TenDayDu]) VALUES (N'DungQK', N'concundangiu', N'Quản kho', N'Hoàng Thị Dung')
INSERT [dbo].[TaiKhoan] ([Ten], [MatKhau], [ChucVu], [TenDayDu]) VALUES (N'iamstaff', N'abc123', N'Bán hàng', N'Chu Thanh Dung')
INSERT [dbo].[TaiKhoan] ([Ten], [MatKhau], [ChucVu], [TenDayDu]) VALUES (N'staff', N'1', N'Bán hàng', N'Phạm Minh Hiếu')
INSERT [dbo].[TaiKhoan] ([Ten], [MatKhau], [ChucVu], [TenDayDu]) VALUES (N'store', N'1', N'Quản kho', N'Đào Công Sự')
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([Ma])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([Ma])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([Ma])
GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 12/4/2020 1:54:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_Login]
@Ten VARCHAR(50) , @MatKhau VARCHAR(50)
AS
BEGIN
	SELECT * FROM dbo.TaiKhoan WHERE Ten = @Ten AND MatKhau = @MatKhau
END

GO
USE [master]
GO
ALTER DATABASE [SupperMarkett] SET  READ_WRITE 
GO
