create database company_2db;
use company_2db;
select * from employee;

select location,count(*) from employee group by location;

select job,count(*) from employee group by job;

select location,avg(age) from employee group by location;

select location,max(age) from employee group by location;

select job ,count(*),avg(age) from employee group by job;

select distinct location from employee;

select first_name,last_name from employee where location = "india"
union
select first_name,last_name from employee where location = "uk";

select location,count(*) from employee group by location having count(*) >100;