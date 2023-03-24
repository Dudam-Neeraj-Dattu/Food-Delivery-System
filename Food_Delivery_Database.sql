--Creating Database

create database Food_Delivery_Database;
go

use Food_Delivery_Database;
go

--Creating Customer Table

create table Customer (
	Customer_id int not null identity (1,1) primary key,
	Name varchar(30) not null,
	Email varchar(30) not null,
	Date_of_Birth date not null,
	Phone_Number bigint not null,
	Address_City varchar(30) not null,
	Address_Pincode int not null
);

--Creating Hotel Table

create table Hotel (
	Hotel_id int not null identity (1,1) primary key ,
	Hotel_Name varchar(30) not null,
	Hotel_Owner_Name varchar(30) not null,
	Hotel_Phone_Number bigint not null,
	Hotel_Address_City varchar(30) not null,
	Hotel_Address_Pincode int not null
);

--Creating Items Table

create table Items(
	Item_id int not null identity (1,1) primary key,
	Item_name varchar(30) not null
);

--Creating Delivery_Boy Table

create table Delivery_Boy (
	Delivery_Boy_id int not null identity (1,1) primary key,
	Name varchar(30) not null,
	Email varchar(30) not null,
	Date_of_Birth date not null,
	Phone_Number bigint not null,
	Address_City varchar(30) not null,
	Address_Pincode int not null
);

--Creating Hotel_Items Table and linking to Items and Hotel Table

create table Hotel_Items (
	Item_id int not null foreign key references Items(Item_id),
	Hotel_id int not null foreign key references Hotel(Hotel_id),	
	Item_Price int not null,
	primary key (Item_id, Hotel_id)
);

--Creating Order_Items Table and linking to Customer, Items and Hotel Table

create table Order_Items (
	Order_id int not null identity (1,1) primary key,
	Customer_id int not null foreign key references Customer(Customer_id),
	Item_id int not null foreign key references Items(Item_id),
	Hotel_id int not null foreign key references Hotel(Hotel_id),
	Quantity int not null,
	Date_of_Order date not null,
);

--Creating Delivery_Item Table and linking to Delivery_Boy and Order Table

create table Delivery_item (
	Order_id int not null foreign key references Order_Items(Order_id),
	Delivery_Boy_id int not null foreign key references Delivery_Boy(Delivery_Boy_id)
)

--Creating Transactions Table and linking to Order_Items and Customer Table

create table Transactions (
	Trans_id int not null identity (1,1) primary key,
	Order_id int not null foreign key references Order_Items(Order_id),
	Customer_id int not null foreign key references Customer(Customer_id),
);


--inserting Customers data

insert into Customer values 
(1, 'Neeraj Dattu', 'dnd@gmail.com', '2001-10-19', 9390618882, 'Warangal', 506002),
(2, 'Ram', 'ram@gmail.com', '2001-11-22', 9390618898, 'Warangal', 506002),
(3, 'Ravi', 'ravi@gmail.com', '2001-01-14', 9390619182, 'Warangal', 506002),
(4, 'Rahul', 'rahul@gmail.com', '2001-02-15', 9390628882, 'Warangal', 506002),
(5, 'Ramesh', 'ramesh@gmail.com', '2001-01-23', 9394418982, 'Warangal', 506002),
(6, 'Suresh', 'suresh@gmail.com', '2002-11-05', 9390818982, 'Warangal', 506002),
(7, 'Karthik', 'karthik@gmail.com', '2000-12-19', 9396618882, 'Warangal', 506002),
(8, 'Jagan Dattu', 'jagan@gmail.com', '2001-10-17', 9790618882, 'Warangal', 506002),
(9, 'Shiva', 'shiva@gmail.com', '2001-07-19', 9390618982, 'Warangal', 506002),
(10, 'Prabhas', 'prabhas@gmail.com', '2002-06-19', 9320618882, 'Warangal', 506002),
(11, 'Arjun', 'arjun@gmail.com', '2000-10-19', 9390617882, 'Warangal', 506002),
(12, 'Charan', 'charan@gmail.com', '2002-12-19', 9390518882, 'Warangal', 506002),
(13, 'Venkat', 'venkat@gmail.com', '2002-06-19', 9390718882, 'Warangal', 506002),
(14, 'Varun', 'varun@gmail.com', '2001-05-19', 9390618882, 'Warangal', 506002),
(15, 'Dhoni', 'dhoni@gmail.com', '2000-01-19', 9390612882, 'Warangal', 506002),
(16, 'Chandra', 'chandra@gmail.com', '2001-11-19', 9360618882, 'Warangal', 506002),
(17, 'Harsha', 'harsha@gmail.com', '2000-11-19', 9390718882, 'Warangal', 506002),
(18, 'Mohan', 'mohan@gmail.com', '2000-07-19', 9390610882, 'Warangal', 506002),
(19, 'Lokesh', 'lokesh@gmail.com', '2003-08-19', 9390328882, 'Warangal', 506002),
(20, 'Vinay', 'vinay@gmail.com', '2004-09-19', 939061482, 'Warangal', 506002),
(21, 'Jagadeesh', 'jagadeesh@gmail.com', '2002-12-19', 9490618882, 'Warangal', 506002),
(22, 'Ravi', 'ravi@gmail.com', '2001-11-19', 9390618872, 'Warangal', 506002);

--inserting Hotel data

inser
t into  Hotel values
	(1, 'Raghu Mess', 'Raghu', 9876578976, 'Warangal', 506002),
	(2, 'Surya Meals and Tiffins', 'Surya', 9874578976, 'Warangal', 506002),
	(3, 'Gokul Biryani', 'Gokul', 9876578236, 'Warangal', 506002),
	(4, 'Shiva Veg Mess', 'Shiva', 9896578976, 'Warangal', 506002),
	(5, 'Maa vanta Gadhi Mess', 'Ramu', 9216578976, 'Warangal', 506002),
	(6, 'Star Tiffins', 'Rahul', 9876556276, 'Warangal', 506002),
	(7, 'Suprabath Hotel of Meals', 'Suprabath', 8716578976, 'Warangal', 506002),
	(8, 'Randi Babu Randi Mess', 'Ram', 9876572316, 'Warangal', 506002),
	(9, 'Tini po Bro Tiffins', 'Avinash', 8776578976, 'Warangal', 506002),
	(10, 'World Famous Mess', 'Jagan', 9076578976, 'Warangal', 506002);

--inserting Items Data

insert into  Items values
	(1, 'Idly'),
	(2, 'Dosa'),
	(3, 'Vada'),
	(4, 'Puri'),
	(5, 'Masala Dosa'),
	(6, 'Upma'),
	(7, 'Pesarattu'),
	(8, 'Meals'),
	(9, 'Full Meals'),
	(10, 'Tomato Rice'),
	(11, 'Veg Biryani'),
	(12, 'Paneer Tomato Rice'),
	(13, 'Aloo Rice'),
	(14, 'Millet Dosa'),
	(15, 'Onion Dosa');

--inserting Delivery_Boy Data

insert into Delivery_Boy values 
('Naatu', 'dd@gmail.com', '1998-10-19', 9390618882, 'Warangal', 506002),
('Remo', 'rem@gmail.com', '1998-11-22', 9390618898, 'Warangal', 506002),
('Rambo', 'rai@gmail.com', '1998-01-14', 9390619182, 'Warangal', 506002),
('Raman', 'raman@gmail.com', '1998-02-15', 9390628882, 'Warangal', 506002),
('Suresh', 'sesh@gmail.com', '1998-01-23', 9394418982, 'Warangal', 506002),
('Sam', 'suh@gmail.com', '1997-11-05', 9390818982, 'Warangal', 506002),
('Kaithi', 'kark@gmail.com', '2000-12-19', 9396618882, 'Warangal', 506002),
('Jatu', 'jan@gmail.com', '1998-10-17', 9790618882, 'Warangal', 506002),
('Shiva', 'shiva@gmail.com', '1998-07-19', 9390618982, 'Warangal', 506002),
('Phas', 'pras@gmail.com', '1999-06-19', 9320618882, 'Warangal', 506002);

--inserting Hotel_Items data

insert into Hotel_Items values
	(8, 1, 40),
	(9, 1, 80),
	(10, 1, 100),
	(11, 1, 120),
	(12, 1, 150),
	(13, 1, 70),
	(1, 2, 20),
	(2, 2, 30),	
	(4, 2, 20),
	(5, 2, 25),	
	(7, 2, 30),
	(8, 2, 50),
	(9, 2, 120),
	(10, 2, 100),
	(11, 2, 140),
	(11, 3, 100),
	(8, 4, 40),
	(9, 4, 80),
	(10, 4, 110),
	(11, 4, 120),
	(12, 4, 190),
	(13, 4, 50),
	(8, 5, 45),
	(9, 5, 83),
	(10, 5, 105),
	(11, 5, 110),
	(12, 5, 140),
	(13, 5, 90),
	(1, 6, 20),
	(2, 6, 30),
	(3, 6, 25),
	(4, 6, 50),
	(5, 6, 70),
	(6, 6, 50),
	(7, 6, 90),
	(14, 6, 80),
	(15, 6, 70),
	(8, 7, 45),
	(9, 7, 85),
	(10, 7, 150),
	(11, 7, 125),
	(12, 7, 155),
	(13, 7, 80),
	(8, 8, 40),
	(9, 8, 60),
	(10, 8, 90),
	(11, 8, 110),
	(12, 8, 120),
	(13, 8, 50),
	(1, 9, 25),
	(2, 9, 35),
	(3, 9, 20),
	(4, 9, 55),
	(5, 9, 50),
	(6, 9, 55),
	(7, 9, 35),
	(14, 9, 70),
	(15, 9, 80),
	(8, 10, 30),
	(9, 10, 70),
	(10, 10, 120),
	(11, 10, 100),
	(12, 10, 120),
	(13, 10, 80);

--inserting Order_Items data

insert into Order_items values
    (1, 1, 2, 2, 2, '2023-03-06'),
    (2, 2, 1, 9, 3, '2023-03-07'),
    (3, 4, 3, 9, 1, '2023-03-08'),
    (4, 3, 4, 6, 2, '2023-03-08'),
    (5, 6, 5, 2, 4, '2023-03-08'),
    (6, 8, 6, 6, 5, '2023-03-09'),
    (7, 12, 7, 9, 3, '2023-03-09'),
    (8, 14, 4, 6, 4, '2023-03-10'),
    (9, 17, 7, 6, 5, '2023-03-10'),
    (10, 2, 8, 4, 6, '2023-03-11'),
    (11, 3, 1, 9, 2, '2023-03-11'),
    (12, 5, 3, 6, 3, '2023-03-12'),
    (13, 7, 5, 9, 2, '2023-03-12'),
    (14, 9, 10, 8, 1, '2023-03-13'),
    (15, 10, 15, 9, 2, '2023-03-13'),
    (16, 11, 12, 5, 6, '2023-03-13'),
    (17, 11, 11, 10, 7, '2023-03-14'),
    (18, 11, 2, 9, 2, '2023-03-14'),
    (19, 12, 1, 6, 4, '2023-03-14'),
    (20, 13, 4, 2, 1, '2023-03-14'),
    (21, 14, 11, 7, 2, '2023-03-15'),
    (22, 9, 12, 4, 6, '2023-03-15'),
    (23, 5, 9, 1, 9, '2023-03-15'),
    (24, 8, 6, 6, 4, '2023-03-15'),
    (25, 9, 7, 2, 6, '2023-03-15'),
    (26, 1, 4, 2, 3, '2023-03-16'),
    (27, 2, 4, 9, 2, '2023-03-16'),
    (28, 3, 7, 9, 4, '2023-03-16'),
    (29, 4, 8, 1, 7, '2023-03-16'),
    (30, 5, 2, 2, 11, '2023-03-16'),
    (31, 21, 4, 9, 3, '2023-03-16'),
    (32, 20, 3, 6, 4, '2023-03-16'),
    (33, 22, 2, 9, 1, '2023-03-16');

--inserting Delivery_Item data

insert into Delivery_item values
(1,2),
(2,3),
(3,1),
(4,4),
(5,5),
(6,7),
(7,1),
(8,4),
(9,8),
(10,9),
(11,10),
(12,10),
(13,1),
(14,2),
(15,4),
(16,6),
(17,8),
(18,8),
(19,10),
(20,2),
(21,2),
(22,3),
(23,5),
(24,4),
(25,9),
(26,7),
(27,8),
(28,2),
(29,3),
(30,8),
(31,9),
(32,10),
(33,10);

--inserting trasaction data

insert into Transactions values
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 4),
    (4, 4, 3),
    (5, 5, 6),
    (6, 6, 8),
    (7, 7, 12),
    (8, 8, 14),
    (9, 9, 17),
    (10, 10, 2),
    (11, 11, 3),
    (12, 12, 5),
    (13, 13 7),
    (14, 14, 9),
    (15, 15, 10),
    (16, 16, 11),
    (17, 17, 11),
    (18, 18, 11),
    (19, 19, 12),
    (20, 20, 13),
    (21, 21, 14),
    (22, 22, 9),
    (23, 23, 5),
    (24, 24, 8),
    (25, 25, 9),
    (26, 26, 1),
    (27, 27, 2),
    (28, 28, 3),
    (29, 29, 4),
    (30, 30, 5),
    (31, 31, 21),
    (32, 32, 20),
    (33, 33, 22);


