create database college_db;
use college_db;

create table department(dept_id int auto_increment primary key,
						dept_name enum("mech","cse","eee","Ai"),
                        hod varchar(50));
                        
create table student(student_id int auto_increment primary key,
				     student_name varchar (50),
					 student_age int,
                     department_id int,
                     foreign key (department_id) references department(dept_id));
                     
# A primary key uniquely identifies each row within a single database table.
# A Foreign key links data between two tables by referencing the primary key of another table.                        

insert into department(dept_name,hod)values("mech","rahul"),
										   ("cse","vinay"),
                                           ("eee","arun");
insert into department(dept_name,hod)values("cse","Anas");
										
insert into student(student_name,student_age,department_id)values
											("amal",20,1),
                                            ("sooraj",21,1),
                                            ("vedha",20,1),
                                            ("ram",21,1),
                                            ("meenu",20,3);
								
select * from department;
select * from student;			

select student_name,dept_name from student inner join department on student.department_id = department.dept_id;

select student_name,dept_name from student inner join department on student.department_id = department.dept_id
where dept_name = "mech";

select count(student_name) as mech_total from student inner join department on student.department_id = department.dept_id
where dept_name = "mech";

