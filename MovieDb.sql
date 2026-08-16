create database MovieStreamDB;
use MovieStreamDB;

create table movies(Movie_ID int primary key,
					Movie_Name varchar(50),
                    Genre enum ("Action","Thriller","Romance"),
                    Language enum ("Malayalam","Tamil","Hindi","Kannada"),
                    Rating decimal(2,1) check (Rating between 1 and 10),
                    Duration_Min int,
                    Release_Year int);
				
select * from movies;

insert into movies(Movie_ID,Movie_Name,Genre,Language,Rating,Duration_Min,Release_Year) values 
				  (101,"Leo","Action","Tamil",8.2,164,2023),
                  (102,"Premalu","Romance","Malayalam",8.5,156,2024),
                  (103,"KGF","Action","Kannada",8.4,168,2018),
                  (104,"Drishyam","Thriller","Malayalam",8.6,160,2018),
                  (105,"Jawan","Action","Hindi",7.4,169,2023),
                  (106,"96","Romance","Tamil",8.5,158,2018);

select * from movies;

select Movie_Name,Rating from movies;

select distinct Genre from movies;

select distinct Language from movies;

 select *from movies limit 3;

select * from movies order by Rating desc limit 2;

select * from movies where Rating > 8.0;

select * from movies where Release_Year > 2020;

select * from movies where Genre = "Action";

select * from movies order by Rating desc;

select * from movies order by Release_Year asc;

select max(Rating) as Maximum_Rating from movies;

select min(Duration_Min) as Minimum_Duration from movies;

select avg(Rating) as Average_Rating from movies;

select Genre,count(*) as Movie_Count from movies group by Genre;

select language ,avg(Rating) as Average_Rating from movies group by Language;

select Genre,count(*) as Movie_Count from movies group by Genre having count(*) > 1;

select Language ,count(*) as Movie_Count from movies group by Language having count(*) > 1;



