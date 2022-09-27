------------------------UC1-Create AddressBook DataBase-------------------------

create database AddressBook_ServiceDB

use AddressBook_ServiceDB
--------------------UC2-Create Table----------------------------------------
CREATE TABLE AddressBookDB(
EmployeeId int Identity(1,1) primary key,
FirstName varChar(200), 
LastName varChar (200),
Address VarChar(200),
City varChar(10),
State varChar(20),
ZipCode int,
Phone bigint,
Email varChar(200)
);
