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

---------------------------------------------
-- 1.Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã sinh viên tăng dần
select 
MaSV, HoSV,TenSV, HocBong
from dmsv
order by MaSV
;
-- 2. Danh sách các sinh viên gồm thông tin sau: Mã sinh viên, họ tên sinh viên,Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Nam/Nữ.
select 
MaSV, HoSV, TenSV, Phai, NgaySinh
from dmsv
order by Phai;
-- 3. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông tin sẽ được sắp xếp theo thứ tự Ngày sinh tăng dần và Học bổng giảm dần.
select 
HoSV,TenSV, NgaySinh, HocBong
from dmsv
order by NgaySinh, HocBong desc;
-- 4. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin: Mã môn, Tên môn, Số tiết.
select * from DMMH
where TenMH like 'T%';
-- 5. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là I, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Phái.
select HoSV, TenSV,Phai
from dmsv
where TenSV like '%i';
-- 6. Danh sách những khoa có ký tự thứ hai của tên khoa có chứa chữ N, gồmcác thông tin: Mã khoa, Tên khoa.
select MaKhoa, TenKhoa from DMKhoa
where Tenkhoa like '_N%';
-- 7. Liệt kê những sinh viên mà họ có chứa chữ Thị.
select *
from dmsv
where hosv like '%Thi%';
-- 8. Cho biết danh sách các sinh viên có học bổng lớn hơn 100,000, gồm cácthông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽđược sắp xếp theo thứ tự Mã khoa giảm dần
select masv, hosv, tensv,makhoa, hocbong
from dmsv
where hocbong >100000
order by makhoa desc;
-- 9. Liệt kê các sinh viên có học bổng từ 150,000 trở lên và sinh ở Hà Nội, gồmcác thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
select Hosv, tensv,makhoa, noisinh, hocbong
from dmsv
where hocbong >= 150000 or noisinh like 'Hà Nội';
-- 10.Danh sách các sinh viên của khoa Anh văn và khoa Vật lý, gồm các thôngtin: Mã sinh viên, Mã khoa, Phái.
select 
masv, makhoa, phai
from dmsv
where makhoa like 'AV' or makhoa like 'VL';
-- 11.Cho biết những sinh viên có ngày sinh từ ngày 01/01/1991 đến ngày05/06/1992 gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học.
select 
masv, ngaysinh, noisinh, hocbong
from dmsv 
where ngaysinh between '1991-01-01' and '1992-06-05';
-- 12.Danh sách những sinh viên có học bổng từ 80.000 đến 150.000, gồm các thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.

select masv, ngaysinh, phai, makhoa, hocbong
from dmsv
where hocbong between 80000 and 150000;
-- 13.Cho biết những môn học có số tiết lớn hơn 30 và nhỏ hơn 45, gồm các thông tin: Mã môn học, Tên môn học, Số tiết.
select * from DMMH
where sotiet between 30 and 45;
-- 14.Liệt kê những sinh viên nam của khoa Anh văn và khoa tin học, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, tên khoa, Phái.
SELECT sv.masv, sv.hosv, sv.tensv, khoa.tenkhoa, sv.phai
FROM dmsv sv
JOIN dmkhoa khoa ON khoa.makhoa = sv.makhoa
WHERE sv.phai = 'Nam' AND (khoa.tenkhoa LIKE 'Anh van' OR khoa.tenkhoa LIKE 'Tin hoc');
-- 15.Liệt kê những sinh viên nữ, tên có chứa chữ N
select * from dmsv sv
where sv.phai like 'Nu' and tensv like '%N%';
-- 16.Danh sách sinh viên có nơi sinh ở Hà Nội và sinh vào tháng 02, gồm các thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
SELECT Hosv, tensv, noisinh, ngaysinh
FROM dmsv
WHERE noisinh LIKE 'Hà Nội' AND MONTH(ngaysinh) = 2;
-- 17.Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh viên, Tuổi,Học bổng.
select hosv, tensv,year(curdate())- year(ngaysinh) as tuoi , hocbong
from dmsv
where year(curdate())- year(ngaysinh) > 20;

-- 18.Danh sách những sinh viên có tuổi từ 20 đến 25, thông tin gồm: Họ tên sinh viên, Tuổi, Tên khoa.
select sv.hosv, sv.tensv, year(curdate())- year(ngaysinh) as tuoi , k.tenkhoa
from dmsv sv join dmkhoa k on k.makhoa = sv.makhoa
where year(curdate()) - year(ngaysinh) between 31 and 32;

-- 19.Danh sách sinh viên sinh vào mùa xuân năm 1990, gồm các thông tin: Họ tên sinh viên,Phái, Ngày sinh.
select hosv, tensv, phai, ngaysinh
from dmsv
where year(ngaysinh) = 1990 and month(ngaysinh) between 1 and 3;
-- 20.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên,
-- Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học
-- bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển
-- thị là “Mức trung bình”
select masv, phai, makhoa,hocbong,
case  
when hocbong > 150000 then 'Hoc bong cao'
else 'Muc trung binh'
end as muchocbong
from dmsv;

-- 21.Cho biết tổng số sinh viên của toàn trường
select count(*) as TongSv
from dmsv;
-- 22.Cho biết tổng sinh viên và tổng sinh viên nữ.
select count(phai) as TongSv
from dmsv
where phai = 'Nu';
-- 23.Cho biết tổng số sinh viên của từng khoa.
select makhoa, count(*) as TongSv
from dmsv
group by makhoa;
-- 24.Cho biết số lượng sinh viên học từng môn.
select * from ketqua;
select masv , count(*) as Tongsv
from ketqua
group by masv;
-- 25.Cho biết số lượng môn học mà sinh viên đã học(tức tổng số môn học có strong bảng kq)
select mamh, count(*) as TongMH
from ketqua
group by mamh;
-- 26.Cho biết tổng số học bổng của mỗi khoa.

select k.makhoa ,count(*) as TongHB
from dmsv sv
join dmkhoa k
on k.makhoa = sv.makhoa
group by k.makhoa;
-- 27.Cho biết học bổng cao nhất của mỗi khoa.
select k.makhoa, max(sv.hocbong) as Hocbongcaonhat
from dmsv sv
join dmkhoa k
on k.makhoa = sv.makhoa
group by makhoa;
select * from dmsv;
-- 28.Cho biết tổng số sinh viên nam và tổng số sinh viên nữ của mỗi khoa.
select phai, count(*) as TongsoNamvaNu
from dmsv
group by phai;
-- 29.Cho biết số lượng sinh viên theo từng độ tuổi
select year(curdate())-year(Ngaysinh) as age , count(*)as SLSVtheotuoi
from dmsv
group by age;
-- 30.Cho biết những năm sinh nào có 2 sinh viên đang theo học tại trường.
select year(curdate())-year(Ngaysinh) as age , count(*)as SLSVtheotuoi
from dmsv
group by age
having count(*) = 2;
-- 31.Cho biết những nơi nào có hơn 2 sinh viên đang theo học tại trường.
SELECT noisinh, COUNT(*) AS DiachiSV
FROM dmsv
GROUP BY noisinh
HAVING COUNT(*) >= 2;
select *from ketqua;
-- 32.Cho biết những môn nào có trên 3 sinh viên dự thi.
select  kq.mamh , count(*) as SLDThi
from dmmh mh join ketqua kq 
on mh.mamh = kq.mamh
group by mamh 
having count(*) >3;

-- 33.Cho biết những sinh viên thi lại trên 2 lần.
SELECT kq.masv, COUNT(*) AS SLDThi
FROM dmmh mh
JOIN ketqua kq ON mh.mamh = kq.mamh
WHERE kq.lanthi = 2
GROUP BY kq.masv;
-- 34.Cho biết những sinh viên nam có điểm trung bình lần 1 trên 7.0
select st.masv,st.tenSV, st.phai, avg(kq.diem) as 'Điểm trung bình'
from dmsv st join ketqua kq on st.masv = kq.masv
where st.phai = 'Nam'
group by st.masv
having avg(kq.diem)>7;
-- 35.Cho biết danh sách các sinh viên rớt trên 2 môn ở lần thi 1.
select kq.masv,kq.mamh, kq.lanthi
from ketqua kq
where kq.lanthi = 1
and kq.diem < 5
group by kq.masv,kq.mamh, kq.lanthi
having count(distinct kq.mamh)> 2;

-- 36.Cho biết danh sách những khoa có nhiều hơn 2 sinh viên nam
select sv.makhoa, count(distinct sv.masv) as SLSV
from dmsv sv
where sv.phai = 'Nam'
group by sv.makhoa
having count(distinct sv.phai)> 2;
-- 37.Cho biết những khoa có 2 sinh vien đạt học bổng từ 200.000 đến 300.000.
select sv.makhoa ,count(distinct sv.masv) as SLSV
from dmsv sv 
where sv.hocbong between 100000 and 300000
group by sv.makhoa
having count(distinct sv.phai)> 2;

select *from dmmh;

-- 38.Cho biết số lượng sinh viên đậu và số lượng sinh viên rớt của từng môn trong lần thi 1.
select kq.mamh,
count(case when kq.diem >= 4 then 1 end ) as 'Số sv đậu',
count(case when kq.diem < 4 then 1 end) as 'Số sv rớt'
from ketqua kq
where kq.lanthi = 1
group by kq.mamh;
-- 39.Cho biết sinh viên nào có học bổng cao nhất.
select masv,tensv, hocbong
from dmsv 
where hocbong=(
select max(hocbong) as 'Học bổng cao nhất' from dmsv);
-- 40.Cho biết sinh viên nào có điểm thi lần 1 môn cơ sở dữ liệu cao nhất
select kq.masv,kq.diem, kq.lanthi
from ketqua kq join DMMH mh
on kq.mamh = mh.mamh
where mh.tenmh like 'Co so du lieu'
having lanthi=1
order by diem desc limit 1;
-- 41.Cho biết sinh viên khoa anh văn có tuổi lớn nhất.
select sv.TenSV, k.tenkhoa, year(curdate())- year(sv.ngaysinh) as age 
from dmkhoa k join dmsv sv on
k.makhoa = sv.makhoa
where tenkhoa like 'Anh van'
order by age desc limit 1;

-- 42.Cho biết khoa nào có đông sinh viên nhất.
select k.tenkhoa, count(sv.masv) as SOSV
from dmkhoa k join dmsv sv on
k.makhoa = sv.makhoa
group by tenkhoa
order by SOSV desc limit 1;
-- 43.Cho biết khoa nào có đông nữ nhất.
select k.tenkhoa, sum(sv.phai = 'nu') as PhaiNu
from dmkhoa k join dmsv sv on
k.makhoa = sv.makhoa
group by tenkhoa
order by PhaiNu desc limit 1;

-- 44.Cho biết môn nào có nhiều sinh viên rớt lần 1 nhiều nhất.
select kq.mamh, count(kq.lanthi) as rotnhieunhat
from ketqua kq join dmsv sv on
kq.masv = sv.masv
where kq.lanthi = 1 and kq.diem <4
group by mamh
order by rotnhieunhat desc limit 1;

-- 45.Cho biết sinh viên không học khoa anh văn có điểm thi môn phạm lớn hơn điểm thi văncủa sinh viên học khoa anh văn.
SELECT sv.masv, sv.tensv, sv.makhoa, kq_pham.diem AS diem_pham, kq_anhvan.diem AS diem_anhvan
FROM dmsv sv
JOIN ketqua kq_pham ON sv.masv = kq_pham.masv AND kq_pham.mamh = 'Phạm'
JOIN ketqua kq_anhvan ON sv.masv = kq_anhvan.masv AND kq_anhvan.mamh = 'Anh văn'
WHERE sv.makhoa != 'Anh văn' AND kq_pham.diem > kq_anhvan.diem;
 -- 46.Cho biết sinh viên có nơi sinh cùng với Hải.
 select masv, tenSV, noisinh
 from dmsv
 where noisinh In(select noisinh from dmsv where tensv='Hai');
 -- 47.Cho biết những sinh viên nào có học bổng lớn hơn tất cả học bổng của sinh viên thuộc khoa anh văn
 select sv.tensv, sv.hocbong, k.tenkhoa
 from dmsv sv join dmkhoa k on sv.makhoa = k.makhoa
 where hocbong > (select Max(hocbong) as HBLN from dmsv sv join dmkhoa k on sv.makhoa = k.makhoa where tenkhoa = 'Anh Van');
-- 48.Cho biết những sinh viên có học bổng lớn hơn bất kỳ học bổng của sinh viên học khóa anh văn
select sv.tensv, sv.hocbong, k.tenkhoa
 from dmsv sv join dmkhoa k on sv.makhoa = k.makhoa
 where hocbong > (select Max(hocbong) as HBLN from dmsv sv join dmkhoa k on sv.makhoa = k.makhoa where tenkhoa = 'Anh Van');
-- 49. cho biết sinh viên nào có điểm thi môn cơ sở dữ liệu lần 2 lớn hơn tất cả điểm thi lần 1 môn cơ sở dữ liệu của những sinh viên khác.
select  kq.masv,kq.diem, mh.tenmh, kq.lanthi
from dmmh mh 
join ketqua kq on mh.mamh = kq.mamh
where kq.lanthi =2 and tenmh like 'Co so du lieu'  and kq.diem > all(select kq.lanthi  from dmmh mh 
join ketqua kq on mh.mamh = kq.mamh
where kq.lanthi =1 and tenmh like 'Co so du lieu');
-- 50.Cho biết những sinh viên đạt điểm cao nhất trong từng môn
select  kq.masv,kq.diem, mh.tenmh, kq.lanthi
from dmmh mh 
join ketqua kq on mh.mamh = kq.mamh
where (kq.mamh, kq.diem)  In (select kq.mamh, max(kq.diem) as Diemcaonhat
from dmmh mh 
join ketqua kq on mh.mamh = kq.mamh
group by mamh
);

-- 51.Cho biết những khoa không có sinh viên học.

select sv.Tensv, k.tenkhoa
from dmkhoa k
left join dmsv sv on k.makhoa = sv.makhoa
where sv.makhoa is null;
-- 52.Cho biết sinh viên chưa thi môn cơ sở dữ liệu.
select * from dmsv
where masv not in(
select masv from dmmh mh join ketqua kq 
on kq.mamh = mh.mamh 
where mh.tenmh = 'Co so du lieu'
);
-- 53.Cho biết sinh viên nào không thi lần 1 mà có dự thi lần 2.
select * from ketqua
where lanthi = 2 and masv not in(
 select masv from ketqua
where lanthi = 1
);
-- 54.Cho biết môn nào không có sinh viên khoa anh văn học.
select * from dmmh
where mamh not in(
select mh.mamh from dmsv sv
join ketqua kq on sv.masv = kq.masv
join dmmh mh on kq.mamh = mh.mamh
where sv.makhoa ='AV'
);
-- 55.Cho biết những sinh viên khoa anh văn chưa học môn văn phạm.

select * from dmsv sv
where sv.makhoa = 'AV' and sv.masv not in(
select kq.masv from ketqua kq
join dmmh mh on kq.mamh = mh.mamh
where mh.mamh ='05'
);
-- 56.Cho biết những sinh viên không rớt môn nào.
select distinct * from dmsv sv join ketqua kq on sv.masv = kq.masv
where diem > 4 and lanthi = 1;
-- 57.Cho biết những sinh viên học khoa anh văn có học bổng và những sinh viên chưa bao giờ rớt.
select *from dmsv;
select * from  dmsv sv join ketqua kq on sv.masv = kq.masv
where makhoa = 'AV' and diem > 4 and lanthi = 1;

-- 58.Cho biết khoa nào có đông sinh viên nhận học bổng nhất và khoa nào khoa nào có ít sinh viên nhận học bổng nhất.
select k.makhoa, count(hocbong) as sohocviennhanhocbong
from dmsv sv
join dmkhoa k on sv.makhoa = k.makhoa
join ketqua kq on sv.masv = kq.masv
where kq.diem > 4
group by k.makhoa
order by sohocviennhanhocbong asc;
-- 59.Cho biết 3 sinh viên có học nhiều môn nhất.
select sv.masv, count(kq.mamh) as somonhoc
from dmsv sv
join ketqua kq on sv.masv = kq.masv
join dmmh mh on kq.mamh = mh.mamh
group by sv.masv
order by somonhoc desc limit 3;
-- 60.Cho biết những môn được tất cả các sinh viên theo học.
SELECT mh.mamh, mh.tenmh
FROM dmmh mh
WHERE NOT EXISTS (
    SELECT DISTINCT sv.masv
    FROM dmsv sv
    WHERE NOT EXISTS (
        SELECT kq.mamh
        FROM ketqua kq
        WHERE kq.masv = sv.masv AND kq.mamh = mh.mamh
    )
)

