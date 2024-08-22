use QLNhanSu;
go

create table NhanVien
(
	MaNhanVien nvarchar(10) not null primary key,
	TenNhanVien nvarchar(20) null,
	NgaySinh date null,
	BangCap nvarchar(30) null,
	Diachi nvarchar(20) null,
	ChucVu nvarchar(20) null,
);

create table DuAn
(
	MaDuAn nvarchar(20) not null primary key,
	TenDuAn nvarchar(50) null,
	NgayDuKienBatDau date null,
	NgayBatDau date null,
	NgayDuKienKetThuc date null,
	NgayKetThuc date null,
	GhiChu nvarchar null,
);

Create table NhanVienThamGiaDuAn
(
	MaNhanVien nvarchar(10) not null,
	MaDuAn nvarchar(20) not null,
	NgayBatDau date not null,
	NgayKetThuc date null,
	NhiemVuDuocGiao nvarchar null,

	constraint pk_NhanVienDuAnThamGia primary key (MaNhanVien, MaDuAn, NgayBatDau),
	constraint fk_MaNhanVien foreign key (MaNhanVien) references NhanVien (MaNhanVien),
	constraint fk_DuAn foreign key (MaDuAn) references DuAn (MaDuAn),
);