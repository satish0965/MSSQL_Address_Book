create database AddressBook_serviceDB;
use AddressBook_serviceDB;

--UC2 add Addressbook table--
create table AddressBook(
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar (100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);
select * from AddressBook;

--UC3 insert contact details into table--
insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email)
values('Satish','Patil','Vasai','Palghar','MH',401208,8698949158,'satish@gmail.com'),
('Amit','Gaikwad','Kokrale','Satara','MH',420203,9638527410,'amit@gmail.com'),
('Pritish','Patil','Virar','Palghar','MH',401303,7418529630,'pritish@gmail.com'),
('Ashish','Dhure','Virar','Palghar','MH',401303,8527419630,'ashish@gmail.com');
select * from AddressBook;


--UC4 edit contact by person's name--
update AddressBook set PhoneNumber=7539514862 where FirstName='Pritish';
select * from AddressBook;