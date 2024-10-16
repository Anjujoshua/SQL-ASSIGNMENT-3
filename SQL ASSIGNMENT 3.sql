#database name is managers
create database Managers;
use managers;
create table managers(managers_id int auto_increment primary key , first_name varchar(30) not null,
last_name varchar(30) not null, DOB date not null,Age int not null check(age>=18 and age<55), 
last_update date, gender char(1), department varchar(30),salary int not null);
desc managers;

-- insert 10 rows

insert into managers (first_name, last_name,DOB, Age,last_update, Gender,Department, salary)
values( 'joshua','alby','2022-09-18',22, '2024-10-16', 'M' ,'IT' , 45000),
('Alby','joy','1998-06-17',26,'2024-10-16', 'M','HR', 50000),
('Eby','jessy','1997-03-10',27, '2024-10-16', 'M' , 'Finance', 25000),
('Reno','john','1991-07-07' ,32, '2024-10-16','M', 'Operations', 30000),
('Albin','shaji','1985-10-08', 38, '2024-10-16','M', 'HR', 37000),
('Melbin', 'ancy','1992-12-24', 31, '2024-10-16','M', 'Marketing',29000),
('johan','george','1994-02-01',29,'2024-10-16','M', 'IT',50000),
('Tom','chacko','1993-06-04',30,'2024-10-16','M', 'HR', 45000),
('Aaliya','smith','2001-04-20',21,'2024-10-16','M','Finance',60000),
('jo','brown','1999-01-30',25,'2024-10-16','M','IT',45000);
select * FROM managers;

-- Write a query that retrieves the name and date of birth of the manager with manager_id.

select concat(first_name,' ' ,last_name) as Name , DOB from Managers where Managers_id=1;

-- write a query to disply the annual income of all managers.

select managers_id, first_name,last_name,12*salary as Annual_income from managers;

-- write a query to display records of all managers except 'Aaliya'

select managers_id,first_name,last_name,DOB,Age,last_update,Gender,Department,Salary from managers where first_name<>'Aaliya';

-- write a query to disply details of managers whose department is IT and earns more than 25000 per month.
select managers_id, first_name, last_name, DOB, Age, last_update,
Gender, Department, Salary from managers where department='IT'and salary >25000;

-- write a query to display details of managers whose salary is between 10000 and 35000.
select managers_id, first_name,last_name,DOB,Age, last_update,
Gender, Department, salary from managers where salary between 10000 and 35000;












