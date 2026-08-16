create database company_new;
use company_new;

create table employee(id int primary key,
					 f_name varchar (50),
                     l_name varchar (50),
                     age int,
                     proffession varchar(50),
                     country varchar (50));

select * from employee;