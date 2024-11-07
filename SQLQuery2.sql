create database Task2
use Task2

create  table Products(
ID Int Primary key identity,
[name] nvarchar(30),
price decimal(30),
cost decimal(30)
)

create table Categories (
ID int Primary key identity,
[name] nvarchar(30),
ProductID int foreign key references products(ID)
)


create table Colors(
ID int identity,
[name] nvarchar (30),
categoryID int foreign key references categories(ID)
)
insert into Products
values('name1',234,23),
('name2',345,34)
insert into Categories
values('pName1',1),
('pname2',2)
insert into Colors
values('qirmizi'),
('sari'),
('ag')


select colors.[name],categories.[name] from Colors
join Categories on Categories.ID=colors.categoryID

drop table Colors

drop table Categories

drop table Products