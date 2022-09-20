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

--UC5 delete existing contact using name--
delete AddressBook where FirstName='Ashish';
select * from AddressBook;

--UC6 retrieve person belonging to city or state--
select * from AddressBook where City = 'Satara' or State = 'MH'; 

--UC7 size of addressbook--
select COUNT(*) as StateCount, State from AddressBook group by State;
select COUNT(*) as StateCount, City from AddressBook group by City;

--UC8 sort entries by name alphbatically--
select * from AddressBook order by FirstName;

--UC9 Identify each addressboook with name and type--
alter table Addressbook add ContactType varchar(100) not null default 'Friend';
update AddressBook set ContactType = 'Family' where FirstName = 'Amit';
select * from AddressBook;

--UC10 get contact count by type--
select COUNT(*) as Type, ContactType from AddressBook group by ContactType;

--UC11 add person to both family and friend--
insert into AddressBook(FirstName,LastName,Address,City,State,Zip,PhoneNumber,Email,ContactType)
values('Kalpesh','Ghagave','Naigaon','Mumbai','MH',401404,9876543210,'kalpesh007@gmail.com','Friend'),
('Ronit','Patil','Nallasopara','Vasai','MH',401209,7894561230,'ronit878@gmail.com','Family');
select * from AddressBook;