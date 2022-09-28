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
		('Radhika','Gandhi','Shiv colony','Mumbai','Maharastra',5655632,6767987865,'radhika  @gmail.com')
		------------------------UC4-Edit Existing contact with their Name----------------------------------
UPDATE AddressBookDB SET Email = 'Kom@gmail.com' WHERE FirstName = 'Komal'
UPDATE AddressBookDB SET Email = 'Radhi@gmail.com' WHERE FirstName = 'Radhika'

-------------------UC5-Delete contacts---------------------------
DELETE FROM AddressBookDB WHERE FirstName = 'Komal'

----------------------------------UC6-Retrieve data-----------------------------
SELECT * FROM AddressBookDB WHERE City = 'Mumbai' or State = 'Maharastra'

--------------------------------------UC7--sizeofaddressBookByCityorState---------------------------------
insert into AddressBookDB
values('Hemant','Sharma','Krishna Temple','Jhasi','UP',3432232,2432798795,'Hemant@gmail.com'),
('neera','Goinka','RamNagar','Kolkata','WestBangol',741256,2515256284,'Namitha@gmail.com')
SELECT COUNT (FirstName) from AddressBookDB where City='Mumbai' And State='Maharashtra'
