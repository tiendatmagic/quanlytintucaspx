create database tintuc

use tintuc

create table TINTUC(
TIN_ID int IDENTITY,
NOIDUNG nvarchar(max),
NGAYGUI datetime,
TGIA_ID int,

primary key(TIN_ID,TGIA_ID)
)

CREATE table TACGIA(
TGIA_ID int IDENTITY,
TENTG nvarchar(30),
EMAIL nvarchar(30),
primary key(TGIA_ID)
)

create table CHUDE(
CHUDE_ID int IDENTITY,
TENCD nvarchar(30),
primary key (CHUDE_ID)
)

