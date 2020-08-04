create database tintuc

use tintuc

create table TINTUC(
TIN_ID char(10),
NOIDUNG nvarchar(max),
NGAYGUI datetime,
TGIA_ID char(10),

primary key(TIN_ID,TGIA_ID)
)


insert into TINTUC values ('TI01',N'Ảo thuật với tiền xu','1/12/2020','TG01')
insert into TINTUC values ('TI02',N'Ảo thuật bài','1/6/2020','TG02')
insert into TINTUC values ('TI03',N'Ảo thuật đơn giản','1/8/2020','TG03')


CREATE table TACGIA(
TGIA_ID char(10),
TENTG nvarchar(30),
EMAIL nvarchar(30),
primary key(TGIA_ID)
)

insert into TACGIA values ('TG01',N'Cao Tiến Đạt','tiendatmagic@gmail.com')
insert into TACGIA values ('TG02',N'Phan Cư Chánh','chanhminions@gmail.com')
insert into TACGIA values ('TG03',N'Nguyễn Quốc Việt','viet99cm@gmail.com')

create table CHUDE(
CHUDE_ID char(10),
TENCD nvarchar(30),
primary key (CHUDE_ID)
)

insert into CHUDE values ('CD01',N'Ảo thuật')
insert into CHUDE values ('CD02',N'Công nghệ')
insert into CHUDE values ('CD03',N'Âm nhạc')