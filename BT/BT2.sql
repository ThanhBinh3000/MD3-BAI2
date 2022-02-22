create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer(
cID int not null auto_increment primary key,
cName varchar(50),
cAge int check(cAge >= 0)
);
create table Orders(
oID int not null auto_increment primary key,
cID int,
oDeTe datetime,
oTotalPricce float
);
create table Products(
pID int not null auto_increment primary key,
pName varchar(50),
pPrice float check(pPrice > 0)
);
create table Orderdetails(
oID int, pID int,
foreign key(pID) references Products (pID),
foreign key(oID) references Orders (oID),
primary key(pID, oID),
odQTY float check ( odQTY > 0)
);