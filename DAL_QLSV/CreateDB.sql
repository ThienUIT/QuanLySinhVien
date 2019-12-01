/****** To insert Vietnames:  ******/
/****** 1. make sure script in Unicode-16 ******/
/****** 2. Put N before Vietnames text ******/
/******    Example: N'Nguyễn Công Hoan' ******/

USE [master]
GO

WHILE EXISTS(select NULL from sys.databases where name='QuanLySinhVien')
BEGIN
    DECLARE @SQL varchar(max)
    SELECT @SQL = COALESCE(@SQL,'') + 'Kill ' + Convert(varchar, SPId) + ';'
    FROM MASTER..SysProcesses
    WHERE DBId = DB_ID(N'QuanLySinhVien') AND SPId <> @@SPId
    EXEC(@SQL)
    DROP DATABASE [QuanLySinhVien]
END
GO

/* Collation = SQL_Latin1_General_CP1_CI_AS */
CREATE DATABASE [QuanLySinhVien]
GO

USE [QuanLySinhVien]
GO



----------------------SUMMARY----------------------------
--tables
--Sinh viên
--Điểm
--ĐKMH
--Môn học
--Lớp
--Ngành
--Khoa
--Giáo viên
-- User
----------------------------------------------------------

-- dạng ngày/tháng/năm--
set dateformat dmy

-- Sinh Viên --
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create table SinhVien
(

MaSinhVien varchar(50) primary key,
HoTen nvarchar(150) not null,
QueQuan nvarchar(350) not null,
NgaySinh smalldatetime not null,
NoiSinh nvarchar(400) not null,
GioiTinh nvarchar(5) not null,
Hinh nvarchar(150) not null,

MaNganh varchar(50) not null,
)
go

USE [QuanLySinhVien]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
--Điểm--
create table Diem
(
MaMonHoc varchar(50)  ,
MaSinhVien varchar(50) ,
SoDiem float  null,
Lanthi int  null,

primary key (MaMonHoc,MaSinhVien),

)
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

--ĐKMH
create table DKMH
(
MaSinhVien varchar(50),
MaMonHoc varchar(50),

primary key (MaSinhVien,MaMonHoc)
)
go

--Môn Học--
USE [QuanLySinhVien]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create table MonHoc
(
MaMonHoc varchar(50) primary key,
TenMonHoc nvarchar(50) not null,
LoaiMonHoc bit , --1:bắt buộc hay 0:tự chọn
TinChiLyThuyet int null,
TinChiThucHanh int null,

MaKhoa varchar(50),
)
GO

--Lớp--
USE [QuanLySinhVien]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create table Lop
(
MaLop varchar(50) primary key,
TenLop nvarchar(50) not null,
LoaiLop bit, --1:lớp clc hay 0:lớp đt
NienKhoa varchar(50) not null,
NgayBatDau smalldatetime not null,
NgayKetThuc smalldatetime null,

MaMonHoc varchar(50) null,
MaGiaoVien varchar(50) not null

)
go
--Học--
USE [QuanLySinhVien]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create table Hoc
(
MaSinhVien varchar(50),
MaLop varchar(50),

primary key (MaSinhVien,MaLop)
)
-- Ngành --
USE [QuanLySinhVien]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Nganh
(
MaNganh varchar(50) primary key,
TenNganh nvarchar(50) not null,
GhiChu nvarchar(500) ,

MaKhoa varchar(50),
)
go

--Khoa--
USE [QuanLySinhVien]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create table Khoa
(
MaKhoa varchar(50) primary key,
TenKhoa nvarchar(50) not null,
GhiChu varchar(500),

Username nvarchar(50) null

)
GO

--Giáo Viên--
USE [QuanLySinhVien]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create table GiaoVien
(
MaGiaoVien varchar(50) primary key,
TenGiaoVien nvarchar(50) not null,
GhiChu nvarchar(500),

MaKhoa varchar(50),

)
go

--Khóa Học--

--CREATE TABLE KhoaHoc
--(
--MaKhoaHoc varchar(50) primary key,
--TenKhoaHoc nvarchar(500),
--NgayBatDau smalldatetime,
--NgayKetThuc smalldatetime,
--GhiChu nvarchar(500),
--)

go

-- tài khoản người dùng, user--
USE [QuanLySinhVien]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create table tb_User 
(
Usertype bit not null, --1:admin hay 0:user
Username nvarchar(50) primary key,
Pass nvarchar(50)
)
go
USE [QuanLySinhVien]
GO

--tài khoản--
insert into tb_User (Usertype,Username,Pass) values(1,'admin','admin')
insert into tb_User (Usertype,Username,Pass) values (0,'user','user')
--Khoa--
USE [QuanLySinhVien]
GO
insert into Khoa (MaKhoa,TenKhoa,GhiChu,Username) values ('01MK',N'Công nghệ thông tin','','admin')
insert into Khoa (MaKhoa,TenKhoa,GhiChu,Username) values ('02MK',N'Công nghệ phần mềm','',null)
--Giáo viên--
USE [QuanLySinhVien]
GO
insert into GiaoVien (MaGiaoVien,TenGiaoVien,GhiChu,MaKhoa) values ('01MGV',N'Trần Thị Nụ','','01MK')
insert into GiaoVien (MaGiaoVien,TenGiaoVien,GhiChu,MaKhoa) values ('02MGV',N'Hồ Đá Lớn','','02MK')
--Ngành--
USE [QuanLySinhVien]
GO
insert into Nganh (MaNganh,TenNganh,GhiChu,MaKhoa) values ('01MN',N'Công nghệ thông tin','','01MK')
insert into Nganh (MaNganh,TenNganh,GhiChu,MaKhoa) values ('02MN',N'Kỹ thuật phần mềm','','02MK')
--SinhViên--
USE [QuanLySinhVien]
GO
insert into SinhVien(MaSinhVien,HoTen,QueQuan,NgaySinh,NoiSinh,GioiTinh,Hinh,MaNganh) values ('001SV',N'Tung Bay Lắc','Hầm Bom','20/09/2000','Hầm Bom','Nam','a','01MN')
--MônHọc--
USE [QuanLySinhVien]
GO
insert into MonHoc (MaMonHoc,TenMonHoc,LoaiMonHoc,TinChiLyThuyet,TinChiThucHanh,MaKhoa) values('01MH',N'Toán',1,4,0,'01MK')
--Lớp--
USE [QuanLySinhVien]
GO
insert into Lop (MaLop,TenLop,LoaiLop,NienKhoa,NgayBatDau,NgayKetThuc,MaMonHoc,MaGiaoVien) values ('01ML','CNTT',0,'12','08/08/2018','05/05/2019','01MH','01MGV')
--Điểm--
USE [QuanLySinhVien]
GO
insert into Diem (MaMonHoc,MaSinhVien,SoDiem,Lanthi) values ('01MH','001SV',10,1)
--ĐKMH--
USE [QuanLySinhVien]
GO
insert into DKMH (MaMonHoc,MaSinhVien) values ('01MH','001SV')
--Học--
USE [QuanLySinhVien]
GO
insert into Hoc (MaSinhVien,MaLop) values ('001SV','01ML')




--------------------------Sinh Viên----------------------
USE [QuanLySinhVien]
GO
	SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_CapNhatSinhVien]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(	@MaSinhVien varchar(50),
		@Hoten nvarchar(150),
		@Quequan nvarchar(350),
		@NgaySinh smalldatetime,
		@NoiSinh nvarchar(400),
		@GioiTinh nvarchar(5),
		@MaNganh varchar(50),
		@Hinh nvarchar(150)
		
	)
AS
begin
	/* SET NOCOUNT ON */
	Update SinhVien Set MaSinhVien = @MaSinhVien, Hoten = @Hoten, QueQuan = @Quequan , Ngaysinh = @Ngaysinh, NoiSinh = @NoiSinh, Gioitinh = @Gioitinh, MaNganh = @MaNganh, Hinh = @Hinh Where MaSinhVien = @MaSinhVien
	RETURN
end
	go
USE [QuanLySinhVien]
GO
	SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_ThemSinhVien]
	(
		@MaSinhVien varchar(50),
		@Hoten nvarchar(150),
		@Quequan nvarchar(350),
		@NgaySinh smalldatetime,
		@NoiSinh nvarchar(400),
		@GioiTinh nvarchar(5),
		@MaNganh varchar(50),
		@Hinh nvarchar(150)
		
	)
AS
begin
	/* SET NOCOUNT ON */
	Insert into SinhVien(MaSinhVien, Hoten, Quequan, NgaySinh, NoiSinh,Gioitinh, MaNganh, Hinh) Values (@MaSinhVien, @Hoten, @Quequan, @Ngaysinh, @NoiSinh,@Gioitinh,@MaNganh, @Hinh)
	RETURN
end
go
USE [QuanLySinhVien]
GO	
	SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_XoaSinhVien]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
		@MaSinhVien varchar(50)
		
AS
begin
	/* SET NOCOUNT ON */
	Delete From SinhVien Where MaSinhVien = @MaSinhVien
	RETURN
end
go
---------------------------Điểm-----------------------------------------------
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_CapNhatDiem]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaMonHoc varchar(50),
		@MaSinhVien varchar(50),
		@SoDiem float,		
		@LanThi int

	)
AS
begin
	/* SET NOCOUNT ON */
	Update Diem set MaMonHoc = @MaMonHoc, MaSinhVien = @MaSinhVien, SoDiem = @SoDiem,LanThi = @LanThi Where MaMonHoc = @MaMonHoc and MaSinhVien = @MaSinhVien
	RETURN
end

go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_NhapDiem]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaMonHoc varchar(50),
		@MaSinhVien varchar(50),
		@SoDiem float,		
		@LanThi int
	)
AS
begin
	/* SET NOCOUNT ON */
	Insert into Diem(MaMonHoc, MaSinhVien, SoDiem, LanThi ) Values(@MaMonHoc, @MaSinhVien, @SoDiem, @LanThi)
	RETURN
end

go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_XoaDiem]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	@MaMonHoc varchar(50),
	@MaSinhVien varchar(50)
AS
begin
	/* SET NOCOUNT ON */
	Delete From Diem where MaMonHoc = @MaMonHoc and MaSinhVien = @MaSinhVien
	RETURN
end

go
----------------------------ĐKMH---------------------------------------
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_CapNhatDKMH]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaMonHoc varchar(50),
		@MaSinhVien varchar(50)

	)
AS
begin
	/* SET NOCOUNT ON */
	Update DKMH set MaSinhVien = @MaSinhVien,MaMonHoc = @MaMonHoc Where MaMonHoc = @MaMonHoc and MaSinhVien = @MaSinhVien
	RETURN
end

go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_NhapDKMH]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaMonHoc varchar(50),
		@MaSinhVien varchar(50)
	)
AS
begin
	/* SET NOCOUNT ON */
	Insert into DKMH(MaMonHoc, MaSinhVien ) Values(@MaMonHoc, @MaSinhVien)
	RETURN
end

go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_XoaDKMH]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
		@MaMonHoc varchar(50),
		@MaSinhVien varchar(50)
AS
begin
	/* SET NOCOUNT ON */
	Delete From DKMH where MaMonHoc = @MaMonHoc and MaSinhVien = @MaSinhVien
	RETURN
end

go
------------------Giáo viên -------------------------------------------
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_CapNhatGiaoVien]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaGiaoVien varchar(50),
		@TenGiaoVien nvarchar(150),
		@MaKhoa varchar(50),
		@GhiChu nvarchar(500)
	)
AS
begin
	/* SET NOCOUNT ON */
	Update GiaoVien Set MaGiaoVien = @MaGiaoVien, TenGiaoVien = @TenGiaoVien, GhiChu= @Ghichu , MaKhoa = @MaKhoa Where MaGiaoVien = @MaGiaoVien
	RETURN
end

go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_ThemGiaoVien]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaGiaoVien varchar(50),
		@TenGiaoVien nvarchar(150),
		@MaKhoa varchar(50),
		@GhiChu nvarchar(500)
	)
AS
begin
	/* SET NOCOUNT ON */
	Insert into GiaoVien(MaGiaoVien, TenGiaoVien, GhiChu, MaKhoa) Values(@MaGiaoVien, @TenGiaoVien,@GhiChu, @MaKhoa)
	RETURN
end

go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_XoaGiaoVien]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaGiaoVien varchar(50)
	)
AS
begin
	/* SET NOCOUNT ON */
	Delete From GiaoVien Where MaGiaoVien = @MaGiaoVien
	RETURN
end

go

	----------------------Khoa--------------------------
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_CapNhatKhoa]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaKhoa varchar(50),
		@TenKhoa nvarchar(50),
		@GhiChu nvarchar(500),
		@Username varchar(50) 
	)
AS
begin
	/* SET NOCOUNT ON */
	Update Khoa Set MaKhoa = @MaKhoa, TenKhoa = @TenKhoa, GhiChu = @GhiChu, Username=@Username Where MaKhoa = @MaKhoa
	RETURN
end

	go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_ThemKhoa]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaKhoa varchar(50),
		@TenKhoa nvarchar(50),
		@GhiChu nvarchar(500),
		@Username varchar(50) 
	)
AS
begin
	/* SET NOCOUNT ON */
	Insert into Khoa(MaKhoa, TenKhoa, Ghichu,Username) Values(@MaKhoa, @TenKhoa, @GhiChu,@Username)
	RETURN
end	
go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_XoaKhoa]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	@MaKhoa varchar(50)
AS
begin
	/* SET NOCOUNT ON */
	Delete From Khoa Where MaKhoa = @MaKhoa
	RETURN
end
go
	-------------------------- Lớp -------------------------------------
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_CapNhatLop]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaLop varchar(50),
		@TenLop nvarchar(50),
		@LoaiLop bit,
		@NienKhoa varchar(50),
		@NgayBatDau smalldatetime,
		@NgayKetThuc smalldatetime,
		@MaGiaoVien varchar(50),
		@MaMonHoc varchar(50)
	)
AS
begin
	/* SET NOCOUNT ON */
	Update Lop Set MaLop = @MaLop, TenLop = @TenLop,LoaiLop = @LoaiLop, NienKhoa= @NienKhoa, NgayBatDau = @NgayBatDau, NgayKetThuc = @NgayKetThuc,MaGiaoVien = @MaGiaoVien,MaMonHoc = @MaMonHoc Where MaLop = @MaLop
	RETURN
end
go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_ThemLop]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaLop varchar(50),
		@TenLop nvarchar(50),
		@LoaiLop bit,
		@NienKhoa varchar(50),
		@NgayBatDau smalldatetime,
		@NgayKetThuc smalldatetime,
		@MaGiaoVien varchar(50),
		@MaMonHoc varchar(50)
	)
AS
begin
	/* SET NOCOUNT ON */
	Insert into Lop(MaLop, TenLop,LoaiLop,NienKhoa,NgayBatDau,NgayKetThuc,MaMonHoc,MaGiaoVien) Values(@MaLop, @TenLop,@LoaiLop,@NienKhoa,@NgayBatDau,@NgayKetThuc,@MaMonHoc,@MaGiaoVien)
	RETURN
end	
go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_XoaLop]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaLop varchar(50)
	)
AS
begin
	/* SET NOCOUNT ON */
	Delete From Lop where MaLop  = @MaLop
	RETURN
end

	go

	--------------------------------------------Môn Học-----------------------------------
	USE [QuanLySinhVien]
GO
	SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_CapNhatMonHoc]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaMonHoc varchar(50),
		@TenMonHoc nvarchar(50),
		@MaKhoa varchar(50),
		@TinChiLyThuyet int,
		@TinChiThucHanh int,
		@LoaiMonHoc bit
	)
AS
begin
	/* SET NOCOUNT ON */
	Update MonHoc Set MaMonHoc = @MaMonHoc, TenMonHoc = @TenMonHoc, LoaiMonHoc = @LoaiMonHoc,TinChiLyThuyet = @TinChiLyThuyet,TinChiThucHanh = @TinChiThucHanh,  MaKhoa = @MaKhoa where MaMonHoc = @MaMonHoc
	RETURN
end	
	go
	USE [QuanLySinhVien]
GO
	SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_ThemMonHoc]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaMonHoc varchar(50),
		@TenMonHoc nvarchar(50),
		@MaKhoa varchar(50),
		@TinChiLyThuyet int,
		@TinChiThucHanh int,
		@LoaiMonHoc bit
	)
AS
begin
	/* SET NOCOUNT ON */
	Insert into MonHoc(MaMonHoc, TenMonHoc, LoaiMonHoc,TinChiLyThuyet,TinChiThucHanh,MaKhoa) Values(@MaMonHoc, @TenMonHoc,@LoaiMonHoc,@TinChiLyThuyet,@TinChiThucHanh, @MaKhoa)
	RETURN
end
	go
	USE [QuanLySinhVien]
GO
	SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_XoaMonHoc]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	@MaMonHoc varchar(50)
AS
begin
	/* SET NOCOUNT ON */
	Delete From MonHoc Where MaMonHoc = @MaMonHoc
	RETURN
end
	go

	------------------ Ngành-----------------------
	USE [QuanLySinhVien]
GO
	SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_CapNhatNganh]
	(
		@MaNganh varchar(50),
		@TenNganh nvarchar(50),
		@GhiChu nvarchar(500),
		@MaKhoa varchar(50)

	)
AS
begin
	Update Nganh Set MaNganh = @MaNganh, TenNganh = @TenNganh, GhiChu = @GhiChu, MaKhoa= @MaKhoa Where MaNganh = @MaNganh
	RETURN
end
	go
	USE [QuanLySinhVien]
GO
	SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_ThemNganh]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	(
		@MaNganh varchar(50),
		@TenNganh nvarchar(50),
		@GhiChu nvarchar(500),
		@MaKhoa varchar(50)
	)
AS
begin
	/* SET NOCOUNT ON */
	Insert into Nganh(MaNganh,  TenNganh,MaKhoa,GhiChu) Values(@MaNganh, @TenNganh,@MaKhoa, @GhiChu)
	RETURN
end

	go
	USE [QuanLySinhVien]
GO
	SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
	create PROCEDURE [dbo].[qlsv_XoaNganh]
	(
	@MaNganh varchar(50)
	)
AS
begin
	/* SET NOCOUNT ON */
	Delete From Nganh Where MaNganh = @MaNganh
	RETURN
end
	go



------------------------------------------user------------------------------
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_AddNewUser]
	(
		@Usertype bit ,
		@Username nvarchar(50),
		@Pass nvarchar(50)
	)
AS
begin
	/* SET NOCOUNT ON */
	Insert into tb_User( Usertype, Username,Pass) Values( @Usertype,@Username, @Pass)
	RETURN
end

go

--
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO

create PROCEDURE [dbo].[qlsv_DeleteUser]
	
	(		
		@Username nvarchar(50)	
	)
AS
begin
	/* SET NOCOUNT ON */
	Delete from tb_User Where Username = @Username
	
	RETURN
end

go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_SelectUser]
	@Usertype bit,
	@Username nvarchar(50),
	@Pass nvarchar(50)
	
AS
begin
	/* SET NOCOUNT ON */
	Select Username From tb_User Where Username=@Username
	RETURN
end

go
USE [QuanLySinhVien]
GO
SET ANSI_NULLS ON	
GO
SET QUOTED_IDENTIFIER ON 
GO
create PROCEDURE [dbo].[qlsv_UpdateUser]
	(
		@Usertype bit,
		@Username nvarchar(50),
		@Pass nvarchar(50)
	)
AS
begin
	/* SET NOCOUNT ON */
	Update tb_User Set Usertype = @Usertype ,Username = @Username, Pass = @Pass Where Username = @Username
	RETURN
end

go

