Create Database QuanLyDiemSV CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
use QuanLyDiemSV;
/*=============DANH MUC KHOA==============*/
Create table DMKhoa(
	MaKhoa char(2) primary key,
	TenKhoa nvarchar(30)not null
);
/*==============DANH MUC SINH VIEN============*/
Create table DMSV(
MaSV char(3) not null primary key,
HoSV nvarchar(15) not null,
TenSV nvarchar(7)not null,
Phai nchar(7),
NgaySinh datetime not null,
NoiSinh nvarchar (20),
MaKhoa char(2),
HocBong float
);
/*===================MON HOC========================*/
create table DMMH(
MaMH char (2) not null,
TenMH nvarchar (25)not null,
SoTiet tinyint,
Constraint DMMH_MaMH_pk primary key(MaMH)
);
/*=====================KET QUA===================*/
Create table KetQua
(
MaSV char(3) not null,
MaMH char (2)not null ,
LanThi tinyint,
Diem decimal(4,2),
Constraint KetQua_MaSV_MaMH_LanThi_pk primary key (MaSV,MaMH,LanThi)
);
/*==========================TAO KHOA NGOAI==============================*/
Alter table dmsv
add Constraint DMKhoa_MaKhoa_fk foreign key (MaKhoa)
References DMKhoa (MaKhoa);
Alter table KetQua
add constraint KetQua_MaSV_fk foreign key (MaSV) references DMSV (MaSV);
Alter table KetQua
add constraint DMMH_MaMH_fk foreign key (MaMH) references DMMH (MaMH);
/*==================NHAP DU LIEU====================*/
/*==============NHAP DU LIEU DMMH=============*/
Insert into DMMH(MaMH,TenMH,SoTiet)
values('01','Cơ Sở Dữ Liệu',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('02','Trí Tuệ Nhân Tạo',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('03','Truyền Tin',45);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('04','Đồ Họa',60);
Insert into DMMH(MaMH,TenMH,SoTiet)
values('05','Văn Phạm',60);
/*==============NHAP DU LIEU DMKHOA=============*/
Insert into DMKhoa(MaKhoa,TenKhoa)
values('AV','Anh Văn');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TH','Tin Học');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('TR','Triết');
Insert into DMKhoa(MaKhoa,TenKhoa)
values('VL','Vật Lý');
/*==============NHAP DU LIEU DMSV=============*/
Insert into DMSV
values('A01','Nguyễn Thị','Hải','Nữ','1990-03-20','Hà Nội','TH',130000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A02','Trần Văn','Chính','Nam','1992-12-24','Bình Định','VL',150000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A03','Lê Thu Bạch','Yến','Nữ','1990-02-21','TP Hồ Chí Minh','TH',170000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('A04','Trần Anh','Tuấn','Nam','1990-12-20','Hà Nội','AV',80000);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B01','Trần Thanh','Mai','Nữ','1991-08-12','Hải Phòng','TR',0);
Insert into DMSV(MaSV,HoSV,TenSV,Phai,NgaySinh,NoiSinh,MaKhoa,HocBong)
values('B02','Trần Thị Thu','Thủy','Nữ','1991-01-02','TP Hồ Chí Minh','AV',0);
/*==============NHAP DU LIEU BANG KET QUA=============*/
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',1,3);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','01',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','02',2,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A01','03',1,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',1,4.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','01',2,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','03',1,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A02','05',1,9);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',1,2);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','01',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A03','03',2,4);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('A04','05',2,10);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','01',1,7);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',1,2.5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B01','03',2,5);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','02',1,6);
Insert into KetQua(MaSV,MaMH,LanThi,Diem)
values('B02','04',1,10);

/* Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh
viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã
sinh viên tăng dần */
select MaSV, HoSV, TenSV, HocBong
from dmsv
order by MaSV ASC; -- asc tăng dần

/*2. Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên,
Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.
*/
select MaSV, concat(HoSV, ' ', TenSV) as HoTen, Phai, NgaySinh
from dmsv 
order by field(Phai ,'Nam', 'Nữ'); 

/*3. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông
tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.*/
select concat(HoSV, ' ', TenSV) as HoTen, NgaySinh, HocBong
from dmsv
order by NgaySinh ASC, HocBong desc;

/*Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã
môn, Tên môn, Số tiết.
*/
select MaMH, TenMH, SoTiet
from dmmh
where TenMH like 'T%';

/*5.Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm
các thông tin: Họ tên sinh viên, Ngày sinh, Phái*/

select concat(HoSV, ' ', TenSV) as HoTen, NgaySinh, Phai
from dmsv
where TenSV like '%I';
/*6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồm
các thông tin: Mã khoa, Tên khoa.*/
select MaKhoa, TenKhoa
from dmkhoa
where TenKhoa like '_n%';

/*7. Liệt kê những sinh viên mà họ có chứa chữ Thị.
*/

select MaSV, concat(HoSV, ' ', TenSV) as HoTen
from dmsv
where HoSV like '%Thị%';

/*8 Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm các
thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ
được sắp xếp theo thứ tự Mã khoa giảm dần*/
select MaSV, concat(HoSV, ' ', TenSV) as HoTen, MaKhoa, HocBong
from dmsv 
where dmsv.HocBong > 100000 
order by MaKhoa DESC;

/* 9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồm
các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng */
select concat(HoSV, ' ', TenSV) as HoTen, MaKhoa, NoiSinh, HocBong
from dmsv
where HocBong > 150000 and NoiSinh like 'Hà Nội';

/*10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thông
tin: Mã sinh viên, Mã khoa, Phái*/
select MaSV, MaKhoa, Phai
from dmsv
-- where MaKhoa not in('TH','TR');
where MaKhoa in('AV','VL');
/*11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày
05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học
bổng*/
select MaSV, NgaySinh, NoiSinh, HocBong
from dmsv
where NgaySinh between '1991-01-01' and '1992-06-05';

/*12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các
thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa*/
select MaSV, NgaySinh, Phai, MaKhoa
from dmsv
where HocBong between 80000 and 150000;
/*13 thống kê g môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông
tin: Mã môn học, Tên môn học, Số tiết.*/
select MaMH, TenMH, SoTiet
from dmmh
where SoTiet between 30 and 45;

/* 14 Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các
thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.*/
select MaSV, concat(HoSV, ' ', TenSV) as HoTen, dmkhoa.TenKhoa, Phai
from dmsv
inner join dmkhoa on dmsv.MaKhoa = dmkhoa.MaKhoa 
 where dmsv.Phai like 'Nam' and (dmkhoa.TenKhoa like 'Anh Văn' or dmkhoa.TenKhoa like 'Tin Học');

/*Cuối ngày, nhân viên tổng kết các hóa đơn bán hàng trong ngày, thông tin 
gồm: số phiếu xuất, mã khách hàng, tên khách hàng, họ tên nhân viên bán 
hàng, ngày bán, trị giá*/
select MaSV, concat(HoSV, ' ', TenSV) as HoTen, NgaySinh, MaKhoa, Phai
from dmsv
where Phai like 'Nữ' and TenSV like '%N%';

/*16.Thống kê doanh số bán hàng theo từng nhân viên, gồm thông tin: mã nhân 
viên, họ tên nhân viên, mã sản phẩm, tên sản phẩm, đơn vị tính, tổng số 
lượng*/
select HoSV, TenSV, NoiSinh, NgaySinh
from dmsv
where NoiSinh like 'Hà Nội' and NgaySinh between '1990-02-01' and '1990-02-28';

 /*17.Liệt kê các hóa đơn bán hàng cho khách vãng lai (KH01) trong quý 2/2018, 
thông tin gồm số phiếu xuất, ngày bán, mã sản phẩm, tên sản phẩm, đơn vị 
tính, số lượng, đơn giá, thành tiền*/
select concat(HoSV, ' ', TenSV) as HoTen, floor(datediff(now(), NgaySinh) / 365) as Tuoi, HocBong
from dmsv;

/*18.Liệt kê các sản phẩm chưa bán được trong 6 tháng đầu năm 2018, thông tin 
gồm: mã sản phẩm, tên sản phẩm, loại sản phẩm, đơn vị tính. */
select concat(HoSV, ' ', TenSV) as HoTen, floor(datediff(curdate(), NgaySinh) / 365) as Tuoi, TenKhoa
from dmsv

inner join dmkhoa on dmsv.MaKhoa = dmkhoa.MaKhoa
where floor(datediff(curdate(), NgaySinh) / 365) between 20 and 25;


/*19.Liệt kê danh sách nhà cung cấp không giao dịch mua bán với cửa hàng trong 
quý 2/2018, gồm thông tin: mã nhà cung cấp, tên nhà cung cấp, địa chỉ, số 


điện thoại*/

select concat(HoSV, ' ', TenSV) as HoTen, Phai, NgaySinh
from dmsv
where year(NgaySinh) = 1990;

-- 20. List HocBong, HocBong >= 500000 hiển thị 'Học bổng cao', otherwise 'Mức trung bình'
select MaSV, Phai, MaKhoa, HocBong
from dmsv
where HocBong >= 500000 like 'Học bổng cao';

-- 21. Tổng số SinhVien toàn trường
select count(MaSV) as TongSinhVien
from dmsv;

-- 22. Tổng số SinhVien, và SinhVien 'Nữ'
select 'Tổng sinh viên' as ' ', count(MaSV) as ' ' from dmsv
union
select 'Sinh viên nữ' as ' ', count(MaSV) from dmsv where Phai = 'Nữ';

-- 23. Tổng số SinhVien từng Khoa
select TenKhoa, count(*) as SoSinhVien from dmsv
inner join dmkhoa on dmsv.MaKhoa = dmkhoa.MaKhoa
group by TenKhoa;

-- 24. Cho biết số SinhVien học từng môn
select TenMH, count(*) as SoSinhVien from dmsv
inner join ketqua on ketqua.MaSV = dmsv.MaSV
inner join dmmh on ketqua.MaMH = dmmh.MaMH
group by TenMH;

-- 25. Tổng số MonHoc trong bảng KetQua (DISTINCT: duy nhất)
select count(distinct MaMH) as 'Tổng số môn học' from ketqua;

-- 26. Cho biết số HocBong mỗi Khoa
select TenKhoa, count(*) as SoHocBong from dmkhoa
group by TenKhoa;

-- 27. Cho biết HocBong cao nhất mỗi khoa
select TenKhoa, max(HocBong) as 'HocBong(max)' from dmkhoa
inner join dmsv on dmsv.MaKhoa = dmkhoa.MaKhoa
group by TenKhoa;

-- 28. Tổng số SV Nam và Nữ mỗi Khoa
select TenKhoa, Phai, count(*) from dmkhoa
inner join dmsv on dmsv.MaKhoa = dmkhoa.MaKhoa
group by TenKhoa, Phai;

-- 29. Cho biết SinhVien theo từng độ tuổi
select floor(datediff(curdate(), NgaySinh) / 365) as Tuoi, count(*) as SoLuong
from dmsv
group by floor(datediff(curdate(), NgaySinh) / 365);

-- 30. Cho biết những năm sinh có 2 SinhVien theo học tại trường
select year(NgaySinh) as NamSinh, count(*) = 2 as SoLuong
from dmsv
group by year(NgaySinh);