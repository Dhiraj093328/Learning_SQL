
use test1;
-- create table using datatypes --
drop table emp; -- if exsist--
create table emp(
e_id int,
F_name varchar(20),
L_name varchar(20),
salary float,
address varchar(20),
joining_date date,
age tinyint,
birth_year year,
mobile_no varchar(30),
gender enum('Male','FeMale','Cannot say'),
project set('P-1','P-2','P-3','P-4')
);

-- insert information in table--
insert into emp (e_id, F_name, L_name, salary, address, joining_date, age, birth_year, mobile_no, gender, project)
values (101, 'Dhiraj', 'Waghmare', 50000, 'Pune', '2020-01-16', 21, 2004, '9876543210', 'Male', 'P-1');

insert into emp (e_id, F_name, L_name, salary, address, joining_date, age, birth_year, mobile_no, gender, project)
values (102, 'Karan', 'Gholap', 60000, 'Pune', '2020-01-17', 22, 2003, '7452693210', 'Male', 'P-3');

insert into emp (e_id, F_name, gender, project)
values (103, 'Sneha','FeMale', 'P-1,P-4');

insert into emp (e_id, F_name, L_name, salary, address, age, gender, project)
values (104, 'pankaja', 'Tiwari', 70000, 'Mumbai', 25,'FeMale', 'P-1');

insert into emp (e_id, F_name, L_name, address,  age, mobile_no, gender, project)
values (105, 'Akshaya', 'iyyer', 'Banglore',  39, '7850246155', 'FeMale', 'P-1,P-3');



select * from emp;