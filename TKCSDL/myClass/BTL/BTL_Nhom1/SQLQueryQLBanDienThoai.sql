﻿--table ChucVu
insert into ChucVu values ('CV01', N'Thu ngân')
insert into ChucVu values ('CV02', N'Nhân viên bán hàng')
insert into ChucVu values ('CV03', N'Nhân viên kỹ thuật')
insert into ChucVu values ('CV04', N'Kế toán')
insert into ChucVu values ('CV05', N'Nhân viên marketing')
insert into ChucVu values ('CV06', N'Bảo vệ')
insert into ChucVu values ('CV07', N'Nhân viên quản lý')

--table NhaCungCap
insert into NhaCungCap(MaNCC, TenNCC, DiaChi, SoDienThoai) values ('NCC01', N'Công ty TNHH Hoa Sen', N'Số 32, đường Trần Hưng Đạo, Đồng Đăng, Lạng Sơn', '0345768398')
insert into NhaCungCap(MaNCC, TenNCC, DiaChi, SoDienThoai) values ('NCC02', N'Công ty TNHH Thống Nhất', N'Số 56A, đường Hùng Vương, Việt Trì, Phú Thọ', '0321768556')
insert into NhaCungCap(MaNCC, TenNCC, DiaChi, SoDienThoai) values ('NCC03', N'Công ty TNHH Synnex FPT', N'Tầng 2, toà nhà Zodiac, ngõ 19 phố Duy Tân, Dịch Vọng Hậu, Cầu Giấy, Hà Nội', '0357898578')
insert into NhaCungCap(MaNCC, TenNCC, DiaChi, SoDienThoai) values ('NCC04', N'Công ty TNHH phân phối Decumar', N'Số 1, đường Nguyễn Chí Thanh, Tân Bình, TP Hồ Chí Minh', '0332980015')
insert into NhaCungCap(MaNCC, TenNCC, DiaChi, SoDienThoai) values ('NCC05', N'Công ty TNHH Việt Bắc', N'Số 78, đường Quang Trung, Móng Cái, Quảng Ninh', '0314511167')

--table NhanVien
insert into NhanVien(MaNV, TenNV, NgaySinh, GioiTinh, DiaChi, SoDienThoai, MaCV) values(N'NV01', N'Nguyễn Quốc Dũng', '2001-12-24', N'Nam', N'Vĩnh Lại, Lâm Thao, Phú Thọ', '0337693148', 'CV06')
insert into NhanVien(MaNV, TenNV, NgaySinh, GioiTinh, DiaChi, SoDienThoai, MaCV) values(N'NV02', N'Nguyễn Quỳnh Anh', '2002-12-14', N'Nữ', N'Phúc Yên, Phúc Yên, Vĩnh Phúc', '0345890734', 'CV02')
insert into NhanVien(MaNV, TenNV, NgaySinh, GioiTinh, DiaChi, SoDienThoai, MaCV) values(N'NV03', N'Nguyễn Ngọc Hiệp', '2002-08-15', N'Nam', N'Yên Sở, Hoàng Mai, Hà Nội', '0386945632', 'CV05')
insert into NhanVien(MaNV, TenNV, NgaySinh, GioiTinh, DiaChi, SoDienThoai, MaCV) values(N'NV04', N'Ngô Trung Kiên', '2002-08-15', N'Nam', N'Hải Vân, Hải Hậu, Nam Định', '0367459126', 'CV03')
insert into NhanVien(MaNV, TenNV, NgaySinh, GioiTinh, DiaChi, SoDienThoai, MaCV) values(N'NV05', N'Nguyễn Đức Thuận', '2002-9-9', N'Nam', N'Trần Duy Hưng, Cầu Giấy, Hà Nội', '0343678932', 'CV01')
insert into NhanVien(MaNV, TenNV, NgaySinh, GioiTinh, DiaChi, SoDienThoai, MaCV) values(N'NV06', N'Nguyễn Bá Tuấn', '2002-01-11', N'Nam', N'Yên Sở, Hoài Đức, Hà Nội', '0378634952', 'CV04')
insert into NhanVien(MaNV, TenNV, NgaySinh, GioiTinh, DiaChi, SoDienThoai, MaCV) values(N'NV07', N'Nguyễn Thanh Hồng', '1999-03-05', N'Nữ', N'Trần Phú, Yên Thịnh, Yên Bái', '0376399615', 'CV07')

--table HoaDonNhap
insert into HoaDonNhap(SoHDN, NgayNhap, HinhThucThanhToan, MaNCC, MaNV) values ('HDN01', '2022-03-07', N'Tiền mặt', 'NCC02', 'NV06')
insert into HoaDonNhap(SoHDN, NgayNhap, HinhThucThanhToan, MaNCC, MaNV) values ('HDN02', '2022-04-09', N'Tiền mặt', 'NCC01', 'NV05')
insert into HoaDonNhap(SoHDN, NgayNhap, HinhThucThanhToan, MaNCC, MaNV) values ('HDN03', '2022-07-23', N'Chuyển khoản', 'NCC04', 'NV03')
insert into HoaDonNhap(SoHDN, NgayNhap, HinhThucThanhToan, MaNCC, MaNV) values ('HDN04', '2022-01-13', N'Tiền mặt', 'NCC05', 'NV06')
insert into HoaDonNhap(SoHDN, NgayNhap, HinhThucThanhToan, MaNCC, MaNV) values ('HDN05', '2022-10-07', N'Chuyển khoản', 'NCC02', 'NV06')
insert into HoaDonNhap(SoHDN, NgayNhap, HinhThucThanhToan, MaNCC, MaNV) values ('HDN06', '2021-12-04', N'Tiền mặt', 'NCC03', 'NV02')

--table SanPham
insert into SanPham (MaSP,TenSP,DonGiaBan,DonGiaNhap,SoLuong,HangSanXuat) values ('SP01', N'Samsung Galaxy Z Flip4 5G', '20999000', '18450000', 12, 'Samsung')
insert into SanPham(MaSP,TenSP,DonGiaBan,DonGiaNhap,SoLuong,HangSanXuat) values ('SP02', N'iPhone 11', '11790000', '9999000', 32, 'Apple')
insert into SanPham(MaSP,TenSP,DonGiaBan,DonGiaNhap,SoLuong,HangSanXuat) values ('SP03', N'Samsung Galaxy S22 Ultra 5G', '25990000', '22500000', 18, 'Samsung')
insert into SanPham(MaSP,TenSP,DonGiaBan,DonGiaNhap,SoLuong,HangSanXuat) values ('SP04', N'Samsung Galaxy A23', '5690000', '4250000', 15, 'Samsung')
insert into SanPham(MaSP,TenSP,DonGiaBan,DonGiaNhap,SoLuong,HangSanXuat) values ('SP05', N'OPPO Reno8 series', '18990000', '13450000', 17, 'Oppo')
insert into SanPham(MaSP,TenSP,DonGiaBan,DonGiaNhap,SoLuong,HangSanXuat) values ('SP06', N'OPPO Find X5 Pro 5G', '28990000', '26450000', 24, 'Oppo')
insert into SanPham(MaSP,TenSP,DonGiaBan,DonGiaNhap,SoLuong,HangSanXuat) values ('SP07', N'Xiaomi 12T', '12490000', '10450000', '53', 'Xiaomi')
insert into SanPham(MaSP,TenSP,DonGiaBan,DonGiaNhap,SoLuong,HangSanXuat) values ('SP08', N'Xiaomi 11 Lite 5G NE', '8490000', '7420000', 47, 'Xiaomi')

--table ChiTietHDN
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN01', 'SP01', 34)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN01', 'SP05', 12)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN01', 'SP07', 4)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN02', 'SP02', 20)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN02', 'SP05', 25)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN05', 'SP07', 20)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN05', 'SP03', 10)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN05', 'SP08', 15)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN05', 'SP02', 5)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN03', 'SP04', 20)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN03', 'SP01', 13)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN04', 'SP03', 28)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN06', 'SP06', 18)
insert into ChiTietHDN(SoHDN, MaSP, SLNhap) values ('HDN06', 'SP08', 8)

--table ChiTietSanPham
insert into ChiTietSanPham values ('SP01', '12GB', '256GB', N'Xanh lá mạ', N'12 tháng')
insert into ChiTietSanPham values ('SP02', '6GB', '256GB', N'Xanh dương', N'12 tháng')
insert into ChiTietSanPham values ('SP03', '12GB', '512GB', N'Cam', N'18 tháng')
insert into ChiTietSanPham values ('SP04', '4GB', '128GB', N'Đen', N'12 tháng')
insert into ChiTietSanPham values ('SP05', '8GB', '256GB', N'Hồng', N'12 tháng')
insert into ChiTietSanPham values ('SP06', '12GB', '1T', N'Xanh rêu', N'12 tháng')
insert into ChiTietSanPham values ('SP07', '8GB', '256GB', N'Đỏ cam', N'12 tháng')
insert into ChiTietSanPham values ('SP08', '6GB', '64GB', N'Hồng phấn', N'12 tháng')

--table KhachHang
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH01', N'Nguyễn Khánh Linh', N'Đống Đa, Hà Nội', '0345655785')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH02', N'Trần Quang Mạnh', N'Sơn Dương, Tuyên Quang', '0365778321')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH03', N'Lê Anh Thanh', N'Lũng Cú, Hà Giang', '0344690233')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH04', N'Ma Anh Minh', N'Phúc Yên, Vĩnh Phúc', '0321467346')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH05', N'Trương Anh Phúc', N'Gia Lâm, Hà Nội', '0335783421')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH06', N'Mai Hồng Ngọc', N'Hòa Lạc, Hà Nội', '0345267893')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH07', N'Khổng Vũ Hiếu', N'Thái Thụy, Thái Bình', '0334534781')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH08', N'Phan Tuấn Huy', N'Cao Mại, Vĩnh Phúc', '0345387367')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH09', N'Đoàn Văn Hậu', N'Thanh Ba, Phú Thọ', '0345387367')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH10', N'Trương Anh Ngọc', N'Cao Lỗ, Quảng Bình', '0346752854')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH11', N'Mai Quốc Khánh', N'Thọ Sơn, Lạng Sơn', '0365375684')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH12', N'Khổng Thảo Vân', N'Vĩnh Tuy, Vĩnh Phúc', '0325476424')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH13', N'Bùi Huy Tuấn', N'Cao Lĩnh, Điện Biên Phủ', '0328753686')
insert into KhachHang(MaKH, TenKH, DiaChi, SoDienThoai) values ('KH14', N'Đoàn Văn Hải', N'Thành Tú, Quảng Ngãi', '0314569873')

--table DonDatHang
insert into DonDatHang(MaDH, MaKH, MaNV, NgayDat, NgayGiao) values ('DDH01', 'KH03', 'NV02', '2022-08-03', '2022-08-10')
insert into DonDatHang(MaDH, MaKH, MaNV, NgayDat, NgayGiao) values ('DDH02', 'KH05', 'NV02', '2022-03-17', '2022-03-27')
insert into DonDatHang(MaDH, MaKH, MaNV, NgayDat, NgayGiao) values ('DDH03', 'KH06', 'NV04', '2022-05-03', '2022-05-10')
insert into DonDatHang(MaDH, MaKH, MaNV, NgayDat, NgayGiao) values ('DDH04', 'KH08', 'NV04', '2022-08-14', '2022-08-25')
insert into DonDatHang(MaDH, MaKH, MaNV, NgayDat, NgayGiao) values ('DDH05', 'KH01', 'NV02', '2022-07-30', '2022-08-10')
insert into DonDatHang(MaDH, MaKH, MaNV, NgayDat, NgayGiao) values ('DDH06', 'KH03', 'NV04', '2022-04-02', '2022-04-12')
insert into DonDatHang(MaDH, MaKH, MaNV, NgayDat, NgayGiao) values ('DDH07', 'KH08', 'NV07', '2022-06-07', '2022-06-20')

--table ChiTietDDH
insert into ChiTietDDH values ('DDH01', 'SP08', 2)
insert into ChiTietDDH values ('DDH03', 'SP01', 1)
insert into ChiTietDDH values ('DDH03', 'SP05', 3)
insert into ChiTietDDH values ('DDH03', 'SP02', 1)
insert into ChiTietDDH values ('DDH02', 'SP01', 1)
insert into ChiTietDDH values ('DDH05', 'SP04', 2)
insert into ChiTietDDH values ('DDH04', 'SP04', 3)
insert into ChiTietDDH values ('DDH04', 'SP01', 5)
insert into ChiTietDDH values ('DDH06', 'SP04', 2)
insert into ChiTietDDH values ('DDH07', 'SP04', 1)
insert into ChiTietDDH values ('DDH07', 'SP01', 1)
insert into ChiTietDDH values ('DDH05', 'SP08', 6)

--HoaDonBan
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB01', '2022-04-05', N'Tiền mặt', 'KH01', 'NV02')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB02', '2022-06-08', N'Trả góp', 'KH08', 'NV02')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB03', '2022-07-08', N'Tiền mặt', 'KH02', 'NV04')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB04', '2022-07-28', N'Tiền mặt', 'KH03', 'NV04')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB05', '2022-04-26', N'Tiền mặt', 'KH01', 'NV04')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV, MaDH) values ('HDB06', '2022-09-10', N'Trả góp', 'KH06', 'NV02', 'DDH03')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB07', '2022-07-08', N'Chuyển khoản', 'KH04', 'NV04')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB08', '2022-03-02', N'Tiền mặt', 'KH14', 'NV05')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB09', '2022-01-05', N'Tiền mặt', 'KH01', 'NV02')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB10', '2022-09-08', N'Trả góp', 'KH08', 'NV02')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV, MaDH) values ('HDB11', '2022-08-08', N'Chuyển Khoản', 'KH03', 'NV04', 'DDH01')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV) values ('HDB12', '2022-07-23', N'Tiền mặt', 'KH03', 'NV04')
insert into HoaDonBan(SoHDB, NgayBan, HinhThucThanhToan, MaKH, MaNV, MaDH) values ('HDB13', '2022-04-16', N'Chuyển khoản', 'KH01', 'NV04', 'DDH05')


--ChiTietHDB
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB12', 'SP01', 3)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB13', 'SP08', 2)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB12', 'SP02', 1)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB01', 'SP05', 6)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB10', 'SP01', 1)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB10', 'SP02', 2)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB09', 'SP07', 2)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB12', 'SP07', 1)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB04', 'SP06', 2)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB04', 'SP02', 1)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB08', 'SP02', 3)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB08', 'SP01', 1)
insert into ChiTietHDB(SoHDB, MaSP, SLBan) values ('HDB06', 'SP02', 2)
