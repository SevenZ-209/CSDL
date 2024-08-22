use za;

CREATE TABLE BANGSACH
(
	MaSach nvarchar(10) not null primary key,
	TenSach nvarchar(50) null,
	TacGia nvarchar(50) null,
	TenNhaXuatBang nvarchar(50) null,
	GiaMua money null,
	GhiChu nvarchar(80) null,
);

CREATE TABLE LOAISACH
(
	MaLoaiSach nvarchar(10) not null primary key,
	TenLoaiSach nvarchar(100) null,
	MieuTaLoaiSach nvarchar(255) null,

);

CREATE TABLE KHACHHANG
(
	MaKhachHang int not null primary key,
	TenKhachHang nvarchar(50) null,
	DiaChi nvarchar(100) null,
	SoDienThoai nvarchar(12) null,
	LoaiSachYeuThich nvarchar(100) null,
	GhiChu nvarchar null,

);

CREATE TABLE THUESACH
(
	MaKhachHang int not null,
	MaSach nvarchar(10) not null,
	NgayMuon Date not null,
	NgayTra Date null,
	SoTienThue money null,
	constraint pk_thuesach primary key (MaKhachHang , MaSach, NgayMuon),
	constraint fk_thuesach_khach_hang foreign key (MaKhachHang) references KHACHHANG (MaKhachHang),
	constraint fk_thuesach_ma_sach foreign key (MaSach) references BangSach(MaSach),
	
);