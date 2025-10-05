create database trial1;
use trial1;
drop table departments;
-- create table departments-- 
create table departments(
			dept_id int primary key,
            dept_name varchar(50)
            
);

-- create table students-- 
create table students(
			s_id int primary key auto_increment,
            s_name varchar(50),
            age int,
            dept_id int,
            constraint fk_dept foreign key (dept_id) references departments(dept_id)
);

-- foreign key :
-- It is used to build relationship between tables

-- insert values into departments -- 
insert into departments(dept_id,dept_name)
values (1,"Mech"),
		(2,"civil"),
        (3,"E&TC"),
        (4,"cs");

-- insert student data--
select*from students;
INSERT INTO students (s_name, age, dept_id)
VALUES
  ("dhiraj", 21, 1),
  ("aniket", 25, 2),
  ("neha", 21, null),
  ("ayan", 25, null);