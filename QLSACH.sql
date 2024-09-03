use master;
go

create database QLThueSach;
go

use QLThueSach;
go
create table Sach
	(
		MaSach nvarchar(10) not null primary key,
		TenSach nvarchar(50) null,
		TacGia nvarchar(50) null,
		TenNhaXuatBan nvarchar(100) null,
		GiaMua money null,
		GhiChu nvarchar(100) null,
	);

create table LoaiSach(
	LoaiSach nvarchar(10) not null primary key,
	TenLoaiSach nvarchar(10) null,
	MieuTaLoaiSach nvarchar(255) null,
);

create table KhachHang(
	MaKhachHang int not null primary key,
	TenKhachHang nvarchar(50) null,
	DiaChi nvarchar(100) null,
	SoDienThoai nvarchar(12),
	LoaiSachYeuThich Nvarchar(100),
	GhiChu nvarchar(MAX),

);

create table ThueSach(
	MaKhachHang int not null,
	MaSach nvarchar(10) not null,
	NgayGioMuon date not null,
	NgayGioTra date null,
	SoTienThue money null,
	constraint PK_ThueSach Primary key (MaKhachHang, MaSach,NgayGioMuon),
	constraint FK_MaKhachHang Foreign Key (MaKhachHang) references KhachHang(MaKhachHang),
	constraint FK_MaSach Foreign Key (MaSach) references Sach(MaSach),
);
