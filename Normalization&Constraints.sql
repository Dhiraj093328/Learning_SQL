-- Normalization
-- Database normalization is the process of efficiently organizing data in a database.
-- It is a set or rules/ guidelines / statements that we follow while storing the data.
-- Types :  1) First Normal form
-- 			2) Second Normal form
-- 			3) Third Normal form

create table students(
student_id int primary key,
first_name varchar(50) not null,
last_name varchar(50),
age int check (age>=5 and age<=22),
email varchar(100) unique,
city varchar(50) default 'pune'
);

-- Lets isert the record --

insert into students(student_id, first_name, last_name, age, email,city)
values (101, "Dhiraj", "Waghmare", 21, 'abc@gmail.com', 'mumbai');

select*from students;           -- show table to use this statement-- 

-- let's voilate/ignore not null constrain by not putting first_name --
insert into students(student_id, last_name)                -- this value cant to insert beacuse first_name is not null
values (102,  "Patil");

-- lets voilate/ignore unique constrints -- 
insert into students(student_id, first_name, last_name, age, email)  -- this value cant to insert 
values (102, "sundar", "pichai", 4, 'abc@gmail.com');                -- beacause cantot follow rule of email and age
															      -- age rule is >5 and <22 and email want unique
 
insert into students(student_id, first_name, last_name, age, email) -- i canot enter the record of city
values (102, "vivek", "patl", 21, 'vivek@gmail.com');                -- but by default city is pune then it
																	-- can directly enter in to record
                                                                    
insert into students(student_id, first_name, last_name, age, email,city)
values (103, "Rakreash", "Sharma", 18, 'rakesh@gmail.com', 'hydrabad');

update students
set last_name = "Patil"
where student_id = 102;

-- Lets voilate primary key -- 
insert into students(student_id, first_name)  -- This record cant insert beacuse student id is prmary key 
values (102, "Akash");        					-- so prmary key is not inset again and agin into table

					
						-- Add constraints on already exsists table-- 
                        
alter table students
add constraint uni_email unique(email);

-- check constrints syntax for exsists table -- 

alter table students
add constraint che_age check(age between 5 and 30);



                                                                  
                                                                     