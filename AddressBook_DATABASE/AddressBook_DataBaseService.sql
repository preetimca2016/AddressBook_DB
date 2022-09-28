------------------------UC1-Create AddressBook DataBase-------------------------

create database AddressBook_ServiceDB

use AddressBook_ServiceDB
--------------------UC2-Create Table----------------------------------------
CREATE TABLE AddressBookDB(
EmployeeId int Identity(1,1) primary key,
FirstName varChar(30), 
LastName varChar(30),
Address VarChar(40),
City varChar(10),
State varChar(20),
ZipCode int,
Phone bigint,
Email varChar(200)
);
------------------------------UC-3-Insert /Add new contacts--------------------------------
SELECT * From AddressBookDB
INSERT INTO AddressBookDB
VALUES  ('Komal','Yadav','BasaiEnclave','GGN', 'Haryan', 122001, 123124324, 'kOMAL@gmail.com')
		('Radhika','Gandhi','Shiv colony','Mumbai','Marashtra',5655632,6767987865,'radhika  @gmail.com')
		------------------------UC4-Edit Existing contact with their Name----------------------------------
UPDATE AddressBookDB SET Email = 'Kom@gmail.com' WHERE FirstName = 'Komal'
UPDATE AddressBookDB SET Email = 'Radhi@gmail.com' WHERE FirstName = 'Radhika'

