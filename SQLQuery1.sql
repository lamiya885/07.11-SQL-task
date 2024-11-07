
create database Task
use task
create table Roles(
ID int Primary key identity,
[ roll name] nvarchar(30)
)

create table Users(
ID int identity not null unique ,
Usenername nvarchar(30),
[password] nvarchar(30),
RollID int foreign key references Roles(ID) 
)


insert into Roles
values('Admin'),
('Mentor')
 

insert into  Users
values('lamiya885','password1',1),
('fidan','password2',1),
('turkan','password3',2)


 select*from Roles
full outer join Users 
on Roles.ID=Users.RollID


drop  table Roles
drop table Users

