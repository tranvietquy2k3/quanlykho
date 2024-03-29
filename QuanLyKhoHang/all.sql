CREATE DATABASE [TTN_QLKho]
GO
USE [TTN_QLKho]
GO
/****** Object:  Table [dbo].[CT_PhieuNhap]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_PhieuNhap](
	[MaSP] [varchar](8) NOT NULL,
	[MaPN] [varchar](8) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_PhieuXuat]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_PhieuXuat](
	[MaPX] [varchar](8) NOT NULL,
	[MaSP] [varchar](8) NOT NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](8) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [varchar](8) NOT NULL,
	[TenLoai] [nvarchar](150) NULL,
	[MoTa] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](8) NOT NULL,
	[TenNCC] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[DienThoai] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenDN] [varchar](20) NULL,
	[MatKhau] [varchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[SDT] [varchar](10) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [bit] NULL,
	[Email] [varchar](30) NULL,
	[isActive] [bit] NULL,
	[isAdmin] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [varchar](8) NOT NULL,
	[NgayNhap] [date] NULL,
	[TongTien] [decimal](18, 2) NULL,
	[GhiChu] [nvarchar](200) NULL,
	[MaNCC] [varchar](8) NULL,
	[Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[MaPX] [varchar](8) NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
	[TongTien] [decimal](18, 2) NULL,
	[NgayMua] [date] NULL,
	[Id] [int] NULL,
	[MaKH] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](8) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[HanMucDuTru] [int] NULL,
	[NuocSX] [nvarchar](50) NULL,
	[DVT] [nvarchar](30) NULL,
	[DonGia] [decimal](18, 2) NULL,
	[MaLoai] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP003', N'2', 22, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP003', N'PN0010', 20, CAST(200000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP004', N'PN0001', 25, CAST(100000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP006', N'PN0001', 15, CAST(110000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP007', N'1', 1, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP007', N'PN0010', 11, CAST(10000.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP008', N'1', 1, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP009', N'2', 1, CAST(12.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP011', N'4', 11, CAST(11.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuNhap] ([MaSP], [MaPN], [SoLuong], [DonGia]) VALUES (N'SP012', N'4', 1, CAST(1.00 AS Decimal(18, 2)))
INSERT [dbo].[CT_PhieuXuat] ([MaPX], [MaSP], [SoLuong]) VALUES (N'PX001', N'SP003', 50)
INSERT [dbo].[CT_PhieuXuat] ([MaPX], [MaSP], [SoLuong]) VALUES (N'PX002', N'SP003', 50)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen]) VALUES (N'KH001', N'Mguyễn Thị Hồng Nhung')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen]) VALUES (N'KH002', N'Phạm Cẩm Ly')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen]) VALUES (N'KH003', N'Trần Kháng Ly')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen]) VALUES (N'KH004', N'Lương Hồng Hạnh')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen]) VALUES (N'KH005', N'Phạm Quang Minh')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen]) VALUES (N'KH006', N'Trần Thị Xuyên')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen]) VALUES (N'KH007', N'Cao Thị Mỹ Duyên')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'L001', N'Điện thoại ,LapTop', N'')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'L002', N'Điện gia dụng', N'')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'L003', N'Phụ kiện', N'')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'L004', N'Thiết bị văn phòng', N'')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'L005', N'Đồ dùng gia đình', N'')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'L006', N'Thuốc men , dược phẩm', N'')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai], [MoTa]) VALUES (N'L007', N'Thời trang', N'')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC001', N'Samsung Vina Electronics', N'Tầng 25, Bitexco Financial Tower,2 Hải Triều, Quận 1, TP. Hồ Chí Minh', N'1800588890')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC002', N'Công ty TNHH LG Electronics Việt Nam', N'Lô CN2, KCN Tràng Duệ, xã Lê Lợi, huyện An Dương, thành phố Hải Phòng, Việt Nam. ', N'249345151')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC003', N'Công ty TNHH Panasonic Việt Nam', N'Lô J1-J2, Khu công nghiệp Thăng Long, xã Kim Chung, huyện Đông Anh, Tp. Hà Nội, Việt Nam', N'0439550111 ')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC004', N'Xiaomi Việt Nam', N'Số 31L, Láng Hạ, Q. Ba Dình, Hà Nội ,Việt Nam', N'0326375888')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC005', N'BlueStone VietNam', N'Tầng 3, Tòa nhà HEID, 12 Đường Láng Hạ, P. Thành Công, Q. Ba Đình, Hà Nội', N'1800545494')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC006', N'Kangaroo', N'Tầng 5, Tòa nhà Ocean Park, Số 1 Đào Duy Anh, Đống Đa, Hà Nội', N'36281698')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC007', N'TOSHIBA Hà Nội', N'Phòng 303, Maritime Bank Tower, 88 Láng Hạ, Q. Đống Đa, Hà Nội', N'02437765955')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC008', N'OPPO VietNam', N'27 Nguyễn Trung Trực, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh', N'1800577776')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC009', N'VIVO Vietnam', N'Tầng 5 Tòa nhà Lilama 10, phố Tố Hữu, Phường Trung Văn, Quận Nam Từ Liêm, TP. Hà Nội', N'18006101')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC010', N'CÔNG TY TNHH ĐIỆN MÁY AQUA VIỆT NAM', N'Tầng 16, Tòa nhà Detech II, 107 Nguyễn Phong Sắc, Cầu Giấy, Hà Nội', N'02838229981')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC011', N'Asus Việt Nam', N'292, Đường Tây Sơn, Trung Liệt, Đống Đa, Hà Nội', N'18006588')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC012', N'BeKo HaNoi', N'63 Trần Quang Diệu, Phường Ô Chợ Dừa, Đống Đa, Hà Nội', N'18006398')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC013', N'Công Ty Ld Sony Việt Nam - Cn Hà Nội', N'300 Trần Khát Chân, Thanh Nhàn, Hai Bà Trưng, Hà Nội', N'039723038')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC014', N'Công Ty Tnhh Candy Việt Nam', N'29 Phố Nguyễn Thị Định, Trung Hoà, Cầu Giấy, Hà Nội', N'')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC015', N'Bosch Việt Nam tại Hà Nội', N'Lô 03C, Tầng 2, Trung tâm Quốc tế 17 Ngô Quyền, Quận Hoàn Kiếm , Hà Nội, Việt Nam', N'039393119')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC016', N'Công Ty Điện Tử Sharp Việt Nam', N'Tầng 5, Charmvit Tower, 117, Trần Duy Hưng, Trung Hòa, Cầu Giấy, Hà Nội', N'035560797')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC017', N'Công ty Cổ phần Casper Việt Nam', N'Biệt thự số B12A-12B, Khu Vinhomes Gardenia, Hàm Nghi, Cầu Diễn, Từ Liêm, Hà Nội', N'18006644')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC018', N'Công Ty TNHH Skyworth Việt Nam', N'Tầng 17 - Tòa nhà Petroland Số 12 Tân Trào, Phường Tân Phú, Quận 07, TP HCM', N'18001180')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC019', N'Công Ty Ariston Thermo Việt Nam', N' Tầng 8, Tòa nhà Hanoi Tourist, 18, Đường Lý Thường Kiệt, Quận Hoàn Kiếm, Hàng Bài, Hoàn Kiếm, Hà Nội', N'02438586655')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC020', N'Ferroli Việt Nam', N'HD Mon, TT04-17, Nam Từ Liêm, Hà nội', N'02433927957')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC021', N'HP VietNam', N'Unit 1002B, 10th Floor, 521 Kim Ma St Handi Resco Towers', N'')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC022', N'DaiKin', N'Level 2, PVV Building, Nam Cuong Urban Area, 234 Hoang Quoc Viet Street, Bac Tu Liem District, Ha Noi City', N'02422091111')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC023', N'Huawei Technologies Vietnam Co., Ltd', N'Keangnam Landmark, E6, Phạm Hùng, Mễ Trì, Nam Từ Liêm, Hà Nội', N'02435538000')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC024', N'Tổng công ty dược Việt nam', N'138B Giảng Võ - Ba Đình - Hà Nội.', N'38443151')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC025', N'Công ty cổ phần Thương mại và Dược phẩm Trúc Tâm', N' Số 6 Ngách 560/56 Nguyễn Văn Cừ - Long Biên - Hà Nội', N'04.36524112')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC026', N'Công ty TNHH Tuệ Linh', N'Số 36, lô M2, KĐT Yên Hòa - Cầu Giấy - Hà Nội.', N'0435568112')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC027', N'Công ty TNHH Dược và thiết bị Y tế Việt Mỹ', N' 2/4 Nguyễn Đình Chiểu, Hà Nội, Việt Nam.', N'8449745166')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC028', N'Công ty Cổ phần Dược phẩm Việt Đức', N' Lô B10/D6 - Khu đô thị Cầu Giấy, phường Dịch Vọng, quận Cầu Giấy, Hà Nội.', N'0435148042')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC029', N'Công ty cổ phấn y dược phẩm VIMEDIMEX', N'246 Cống Quỳnh, P. Phạm Ngũ Lão, Q.1, Tp.HCM', N'0838990164')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (N'NCC030', N'Công ty Cổ phần Dược phẩm Vinacare', N'Số 18 ngách 19/15 Kim Đồng- Hà Nội', N'0436649263')
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([Id], [TenDN], [MatKhau], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [Email], [isActive], [isAdmin]) VALUES (1, N'admin', N'quy123', N'Trần Viết Quý', N'Hà Nam', N'0948154874', CAST(N'2003-01-18' AS Date), 1, N'tranvietquy@gmail.com', 1, 1)
INSERT [dbo].[NhanVien] ([Id], [TenDN], [MatKhau], [HoTen], [DiaChi], [SDT], [NgaySinh], [GioiTinh], [Email], [isActive], [isAdmin]) VALUES (2, N'vu123', N'vu123', N'Trần Ngọc Vũ', N'Thái Bình', N'0974587454', CAST(N'2003-05-24' AS Date), 0, N'tranngocvu@gmail.com', 1, 0)

SET IDENTITY_INSERT [dbo].[NhanVien] OFF
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [TongTien], [GhiChu], [MaNCC], [Id]) VALUES (N'1', CAST(N'2020-03-02' AS Date), CAST(2.00 AS Decimal(18, 2)), N'', N'NCC013', 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [TongTien], [GhiChu], [MaNCC], [Id]) VALUES (N'2', CAST(N'2020-03-02' AS Date), CAST(14.00 AS Decimal(18, 2)), N'', N'NCC014', 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [TongTien], [GhiChu], [MaNCC], [Id]) VALUES (N'4', CAST(N'2020-03-02' AS Date), CAST(122.00 AS Decimal(18, 2)), N'', N'NCC025', 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [TongTien], [GhiChu], [MaNCC], [Id]) VALUES (N'PN0001', CAST(N'2020-03-05' AS Date), CAST(4150000.00 AS Decimal(18, 2)), N'', N'NCC004', 1)
INSERT [dbo].[PhieuNhap] ([MaPN], [NgayNhap], [TongTien], [GhiChu], [MaNCC], [Id]) VALUES (N'PN0010', CAST(N'2020-03-03' AS Date), CAST(4110000.00 AS Decimal(18, 2)), N'', N'NCC019', 1)
INSERT [dbo].[PhieuXuat] ([MaPX], [GhiChu], [TongTien], [NgayMua], [Id], [MaKH]) VALUES (N'PX001', N'none', CAST(325000000.00 AS Decimal(18, 2)), CAST(N'2020-03-05' AS Date), 1, N'KH003')
INSERT [dbo].[PhieuXuat] ([MaPX], [GhiChu], [TongTien], [NgayMua], [Id], [MaKH]) VALUES (N'PX002', N'hah', CAST(325000000.00 AS Decimal(18, 2)), CAST(N'2020-03-05' AS Date), 1, N'KH005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP001', N'Smart Tivi Samsung 4K 65 inch UA65TU7000 ', 600, N'Hàn Quốc', N'Chiếc', CAST(23400000.00 AS Decimal(18, 2)), N'L001')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP002', N'Smart Tivi QLED Samsung 4K 75 inch QA75Q70T', 200, N'Hàn Quốc', N'Chiếc', CAST(57900000.00 AS Decimal(18, 2)), N'L001')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP003', N'Tivi Skyworth 32 inch 32TB2000', 600, N'Hàn Quốc', N'Chiếc', CAST(2690000.00 AS Decimal(18, 2)), N'L001')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP004', N'Tivi Casper 32 inch 32HN5000
', 600, N'Thái Lan', N'Chiếc', CAST(2990000.00 AS Decimal(18, 2)), N'L001')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP005', N'Smart Tivi Sony 40 inch KDL-40W660E', 600, N'Việt Nam', N'Chiếc', CAST(7370000.00 AS Decimal(18, 2)), N'L001')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP006', N'Nồi cơm điện Sunhouse MAMA 1 lít SHD 8220
', 600, N'Nhật Bản', N'Chiếc', CAST(510000.00 AS Decimal(18, 2)), N'L002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP007', N'Bình siêu tốc Delites 1.7 lít ST17P01WG Xanh lá', 600, N'Trung Quốc', N'Chiếc', CAST(220000.00 AS Decimal(18, 2)), N'L002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP008', N'Máy lọc không khí Kangaroo KG30AP1
', 600, N'Mỹ', N'Chiếc', CAST(3350000.00 AS Decimal(18, 2)), N'L002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP009', N'Bàn ủi hơi nước Sunhouse SHD2065
', 600, N'Việt Nam', N'Chiếc', CAST(230000.00 AS Decimal(18, 2)), N'L002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP010', N'Máy xay sinh tố Panasonic MX-GX1511WRA
', 600, N'Việt Nam', N'Chiếc', CAST(912000.00 AS Decimal(18, 2)), N'L002')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP011', N'Pin sạc dự phòng 15.000 mAh Xmobile LA Y615N', 600, N'Nhật Bản', N'Chiếc', CAST(850.00 AS Decimal(18, 2)), N'L003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP012', N'ai nghe Bluetooth Awei G51BS Đen
', 600, N'Mỹ', N'Chiếc', CAST(450.00 AS Decimal(18, 2)), N'L003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP013', N'Loa Bluetooth Fenda W19 Nâu', 600, N'Trung Quốc', N'Chiếc', CAST(1000000.00 AS Decimal(18, 2)), N'L003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP014', N'Thẻ nhớ MicroSD 32 GB Lexar class 10 UHS-I
', 600, N'Nhật Bản', N'Chiếc', CAST(180000.00 AS Decimal(18, 2)), N'L003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP015', N'Ốp lưng Galaxy A11 nhựa dẻo Geometry OSMIA Silver
', 600, N'Nhật Bản', N'Chiếc', CAST(120000.00 AS Decimal(18, 2)), N'L003')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP016', N'Máy in phun màu Canon PIXMA G1010', 600, N'Nhật Bản', N'Chiếc', CAST(2990000.00 AS Decimal(18, 2)), N'L004')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP017', N'Máy chiếu Panasonic PT-LB303', 600, N'Mỹ', N'Chiếc', CAST(12990000.00 AS Decimal(18, 2)), N'L004')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP018', N'Máy chiếu Epson EB-S05', 600, N'Hàn Quốc', N'Chiếc', CAST(9430000.00 AS Decimal(18, 2)), N'L004')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP019', N'Máy in laser đa năng Brother MFC-L2701D', 600, N'Hàn Quốc', N'Chiếc', CAST(5700000.00 AS Decimal(18, 2)), N'L004')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP020', N'Máy in đen trắng HP Laser 107W 4ZB78A', 600, N'Mỹ', N'Chiếc', CAST(2390000.00 AS Decimal(18, 2)), N'L004')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP021', N'Chảo nhôm chống dính đáy từ 24 cm Sunhouse SHM24D
', 600, N'Trung Quốc', N'Chiếc', CAST(160000.00 AS Decimal(18, 2)), N'L005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP022', N'Mũ bảo hiểm trẻ em 1/2 Chita CT5C(K) đỏ trắng', 600, N'Trung Quốc', N'Chiếc', CAST(140000.00 AS Decimal(18, 2)), N'L005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP023', N'Nồi Inox 3 đáy 20 cm Happycook N20 MLGP', 600, N'Trung Quốc', N'Chiếc', CAST(260000.00 AS Decimal(18, 2)), N'L005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP024', N'Thùng rác matsu nhựa nhí Duy Tân TR01 cam
', 600, N'Trung Quốc', N'Chiếc', CAST(21000.00 AS Decimal(18, 2)), N'L005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP025', N'Bộ 6 móc áo quần nhựa Đồng Tâm MA 009
', 600, N'Việt Nam', N'Bộ', CAST(25000.00 AS Decimal(18, 2)), N'L005')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP026', N'Hyakuso ', 600, N'Việt Nam', N'Hộp', CAST(255000.00 AS Decimal(18, 2)), N'L006')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP027', N'HB DIGIC giúp gan khỏe mạnh', 600, N'Việt Nam', N'Hộp', CAST(1980000.00 AS Decimal(18, 2)), N'L006')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP028', N'GINKO G9 Hoạt huyết dưỡng lão', 600, N'Việt Nam', N'Hộp', CAST(320000.00 AS Decimal(18, 2)), N'L006')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP029', N'A.T Ibuprofen giảm đau chống viêm', 600, N'Việt Nam', N'Hộp', CAST(135000.00 AS Decimal(18, 2)), N'L006')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP030', N'Asmaact Điều trị hen suyễn', 600, N'Việt Nam', N'Hộp', CAST(62000.00 AS Decimal(18, 2)), N'L006')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP031', N'Áo thun tay lỡ form rộng unisex 100% COTTON', 600, N'Quảng Châu, Trung Quốc', N'Chiếc', CAST(47900.00 AS Decimal(18, 2)), N'L007')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP032', N'Áo Chống Nắng Nữ Thông Hơi Chống Tia UV Hàng Loại 1', 600, N'Quảng Châu, Trung Quốc', N'Chiếc', CAST(67500.00 AS Decimal(18, 2)), N'L007')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP033', N'ÁO CHỐNG NẮNG NAM- LÀM MÁT- THÔNG HƠI', 600, N'Quảng Châu, Trung Quốc', N'Chiếc', CAST(99000.00 AS Decimal(18, 2)), N'L007')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP034', N'Bộ ngủ zoo cộc tay cute', 600, N'Quảng Châu, Trung Quốc', N'Chiếc', CAST(55000.00 AS Decimal(18, 2)), N'L007')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [HanMucDuTru], [NuocSX], [DVT], [DonGia], [MaLoai]) VALUES (N'SP035', N'Quần kẻ karo to mẫu mới', 600, N'Quảng Châu, Trung Quốc', N'Chiếc', CAST(42000.00 AS Decimal(18, 2)), N'L007')
ALTER TABLE [dbo].[CT_PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_PhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaPX])
REFERENCES [dbo].[PhieuXuat] ([MaPX])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CT_PhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[NhanVien] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([Id])
REFERENCES [dbo].[NhanVien] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[SUACT_PHIEUNHAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SUACT_PHIEUNHAP] (@MASP VARCHAR(8) ,@MAPN VARCHAR(8) ,@SOLUONG INT ,@DONGIA DECIMAL(18,2))
AS
BEGIN
	UPDATE CT_PhieuNhap
	SET MaSP=@MASP ,SoLuong=@SOLUONG ,DonGia=@DONGIA
	where MaPN = @MAPN
END

GO
/****** Object:  StoredProcedure [dbo].[SUANHACUNGCAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SUANHACUNGCAP](@MANCC VARCHAR(8),@TENNCC NVARCHAR(150),@DIACHI NVARCHAR(150) ,@SDT VARCHAR(11))AS
BEGIN
	UPDATE NhaCungCap
	SET MaNCC=@MANCC,TenNCC=@TENNCC,DiaChi=@DIACHI, DienThoai=@SDT
	WHERE  MaNCC=@MANCC
END
GO
/****** Object:  StoredProcedure [dbo].[SUAPHIEUNHAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SUAPHIEUNHAP] (@MAPN VARCHAR(8),@NGAYNHAP DATE,@TONGTIEN INT,@GHICHU NVARCHAR(200),
@MANHACUNGCAP VARCHAR(8),@ID int)
AS
BEGIN
	UPDATE PhieuNhap
	SET NgayNhap = @NGAYNHAP , TongTien = @TONGTIEN , GhiChu=@GHICHU ,MaNCC = @MANHACUNGCAP , Id=@ID
	where MaPN = @MAPN
END
GO
/****** Object:  StoredProcedure [dbo].[SUASANPHAM]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- TAO THU TUC SUA SAN PHAM 
CREATE PROC [dbo].[SUASANPHAM] (@MA VARCHAR(10) , @TEN nvarchar(50) , @DUTRU INT ,  @XUATXU CHAR(20) ,
@DONVITINH NVARCHAR(30),@DONGIA DECIMAL(18,2),@MALOAI Varchar(8))
AS
BEGIN
	UPDATE SanPham
	SET TenSP = @TEN , HanMucDuTru = @DUTRU , NuocSX = @XUATXU , DVT = @DONVITINH , DonGia = @DONGIA , MaLoai = @MALOAI
	where MaSP = @MA
END
GO
/****** Object:  StoredProcedure [dbo].[SUATHONGTINKHACHHANG]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SUATHONGTINKHACHHANG](@MAKH VARCHAR(8),@TENKHACH NVARCHAR(50))AS
BEGIN
	UPDATE KhachHang 
	SET MaKH =@MAKH , HoTen = @TENKHACH
	WHERE MaKH =@MAKH 
END
GO
/****** Object:  StoredProcedure [dbo].[SUATHONGTINNHANVIEN]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SUATHONGTINNHANVIEN](@ID int, @TENDN VARCHAR(20), @MATKHAU VARCHAR(50),@HOTEN NVARCHAR(50),
@DIACHI NVARCHAR(50) , @SDT VARCHAR(10) ,@NGAYSINH DATE, @GIOITINH BIT , @EMAIL VARCHAR(30), @ISACTIVE bit, @ISADMIN bit )AS
BEGIN
	UPDATE NhanVien
	SET TenDN=@TENDN ,MatKhau=@MATKHAU ,Hoten=@HOTEN ,DiaChi=@DIACHI ,SDT=@SDT ,
		NgaySinh=@NGAYSINH ,GioiTinh =@GIOITINH ,Email = @EMAIL, isActive = @ISACTIVE, isAdmin = @ISADMIN 
	WHERE Id = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[THEMCTPHIEUNHAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[THEMCTPHIEUNHAP](@masp varchar(8), @mapn varchar(8), @soluong int, @dongia decimal)
as
    begin
        insert into CT_PhieuNhap(MaSP,MaPN,SoLuong,DonGia)
        values(@masp,@mapn,@soluong,@dongia)
    end
GO
/****** Object:  StoredProcedure [dbo].[THEMHANGVAOPHIEUNHAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[THEMHANGVAOPHIEUNHAP] (@MAPN VARCHAR(8) ,@MASP VARCHAR(8), @NGAYNHAP DATE , @TONGTIEN DECIMAL(18,2),
@GHICHU NVARCHAR(200) ,@MANHACUNGCAP VARCHAR(8) ,@SOLUONG INT , @DONGIA DECIMAL(18,2), @ID int )
AS
BEGIN
	INSERT INTO PhieuNhap(MaPN ,NgayNhap ,TongTien ,GhiChu ,MaNCC ,Id )
	VALUES (@MAPN ,@NGAYNHAP ,@TONGTIEN ,@GHICHU ,@MANHACUNGCAP ,@ID )
	INSERT INTO CT_PhieuNhap(MaSP ,MaPN ,SoLuong ,DonGia)
	VALUES (@MASP ,@MAPN ,@SOLUONG ,@DONGIA)
END

GO
/****** Object:  StoredProcedure [dbo].[THEMKHACHHANG]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[THEMKHACHHANG](@MAKH VARCHAR(8) , @TENKHACH NVARCHAR(50))AS
BEGIN
	INSERT INTO KhachHang (MaKH , HoTen)
	Values (@MAKH,@TENKHACH)
END

GO
/****** Object:  StoredProcedure [dbo].[THEMNHACUNGCAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[THEMNHACUNGCAP] (@MANCC VARCHAR(8),@TENNCC NVARCHAR(150),@DIACHI NVARCHAR(150) ,@SDT VARCHAR(11))AS
BEGIN 
	INSERT INTO NhaCungCap(MaNCC,TenNCC,DiaChi, DienThoai)
	values(@MANCC,@TENNCC,@DIACHI,@SDT)
END

GO
/****** Object:  StoredProcedure [dbo].[THEMNHANVIEN]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[THEMNHANVIEN](@TENDN VARCHAR(20), @MATKHAU VARCHAR(50),@HOTEN NVARCHAR(50),
@DIACHI NVARCHAR(50) , @SDT VARCHAR(10) ,@NGAYSINH DATE, @GIOITINH BIT , @EMAIL VARCHAR(30), @ISACTIVE bit, @ISADMIN bit)AS
BEGIN
	INSERT INTO NhanVien(TenDN ,MatKhau ,Hoten ,DiaChi ,SDT ,NgaySinh ,GioiTinh ,Email, isActive, isAdmin )
	Values(@TENDN ,@MATKHAU ,@HOTEN ,@DIACHI ,@SDT ,@NGAYSINH ,@GIOITINH ,@EMAIL, @ISACTIVE, @ISADMIN )
END
GO
/****** Object:  StoredProcedure [dbo].[THEMPHIEUNHAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[THEMPHIEUNHAP](@mapn varchar(8), @ngaynhap date, @tongtien decimal, @ghichu nvarchar(200), @mancc varchar(8), @id int)
as
    begin
        insert into PhieuNhap(MaPN,NgayNhap,TongTien,GhiChu,MaNCC,Id)
        values(@mapn,@ngaynhap,@tongtien,@ghichu,@mancc,@id)
    end
GO
/****** Object:  StoredProcedure [dbo].[THEMSANPHAM]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[THEMSANPHAM] (@MA VARCHAR(10) , @TEN nvarchar(50) , @DUTRU INT ,  @XUATXU CHAR(20) ,
@DONVITINH NVARCHAR(30),@DONGIA DECIMAL(18,2),@MALOAI Varchar(8))
AS
BEGIN
	INSERT INTO SanPham(MaSP ,TenSP ,HanMucDuTru ,NuocSX ,DVT ,DonGia ,MaLoai )
	VALUES (@MA ,@ten ,@DUTRU ,@XUATXU ,@DONVITINH ,@DONGIA ,@MALOAI )
END
GO
/****** Object:  StoredProcedure [dbo].[XEMCHITIETKHACHHANG]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XEMCHITIETKHACHHANG](@MAKH VARCHAR(8)) AS
BEGIN
	SELECT * FROM KhachHang
	WHERE MaKH =@MAKH
END
GO
/****** Object:  StoredProcedure [dbo].[XEMCHITIETNHACUNGCAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[XEMCHITIETNHACUNGCAP](@MANCC VARCHAR(8))AS
BEGIN
	SELECT * FROM NhaCungCap
	WHERE MaNCC = @MANCC
END
GO
/****** Object:  StoredProcedure [dbo].[XEMCHITIETNHANVIEN]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[XEMCHITIETNHANVIEN](@ID int) AS
BEGIN
	SELECT * FROM NhanVien
	WHERE Id = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[XEMCHITIETPHIEUNHAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XEMCHITIETPHIEUNHAP](@MA VARCHAR(10))AS
BEGIN
	SELECT PhieuNhap.MaPN, NgayNhap, TongTien, GhiChu, MaNCC, Id,  MaSP,
	SoLuong , DonGia FROM PhieuNhap ,CT_PhieuNhap
	WHERE @MA=PhieuNhap.MaPN
END

GO
/****** Object:  StoredProcedure [dbo].[XEMCHITIETSANPHAM]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[XEMCHITIETSANPHAM](@MA VARCHAR(10))AS
BEGIN
	SELECT * FROM SanPham
	WHERE @MA=MaSP
END
GO
/****** Object:  StoredProcedure [dbo].[XEMNHACUNGCAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[XEMNHACUNGCAP] AS
BEGIN
	SELECT * FROM NhaCungCap
END
GO
/****** Object:  StoredProcedure [dbo].[XEMTATCAKHACHHANG]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XEMTATCAKHACHHANG] AS
BEGIN
	SELECT * FROM KhachHang
END
GO
/****** Object:  StoredProcedure [dbo].[XEMTATCANHANVIEN]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[XEMTATCANHANVIEN] AS
BEGIN
	SELECT * FROM NhanVien where isActive = 1
END
GO
/****** Object:  StoredProcedure [dbo].[XEMTATCAPHIEUNHAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XEMTATCAPHIEUNHAP] AS
BEGIN
	SELECT * FROM PHIEUNHAP , CT_PHIEUNHAP
END
GO
/****** Object:  StoredProcedure [dbo].[XEMTATCASANPHAM]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XEMTATCASANPHAM] AS
BEGIN
	SELECT * FROM SanPham
END
GO
/****** Object:  StoredProcedure [dbo].[XOAKHACHHANG]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XOAKHACHHANG](@MAKH VARCHAR(8))AS
BEGIN
	DELETE FROM KhachHang
	WHERE MaKH = @MAKH
END
GO
/****** Object:  StoredProcedure [dbo].[XOANHACUNGCAP]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XOANHACUNGCAP](@MANCC VARCHAR(8))AS
BEGIN 
	DELETE FROM NhaCungCap
	WHERE  MaNCC=@MANCC
END
GO
/****** Object:  StoredProcedure [dbo].[XOANHANVIEN]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XOANHANVIEN](@ID int)AS
BEGIN
	DELETE FROM NhanVien
	WHERE Id = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[XOAPN]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XOAPN](@MAPN VARCHAR(8))AS
BEGIN 
	DELETE FROM PhieuNhap
	WHERE MaPN = @MAPN
	DELETE FROM CT_PhieuNhap
	WHERE MaPN = @MAPN
END
GO
/****** Object:  StoredProcedure [dbo].[XOASANPHAM]    Script Date: 10-Jun-20 5:27:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XOASANPHAM](@MA VARCHAR(10))AS
BEGIN 
	DELETE FROM SanPham
	WHERE MaSP = @MA
END
GO
USE [master]
GO
ALTER DATABASE [TTN_QLKho] SET  READ_WRITE 
GO
