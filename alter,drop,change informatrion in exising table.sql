
use test1;
drop table student;
-- create table using datatypes --
create table student(
s_id int,
F_name varchar(20),
L_name varchar(20),
address varchar(20),
age tinyint,
birth_year year,
gender enum('Male','FeMale','Cannot say'),
Practical_performed set('P-1','P-2','P-3','P-4')
);

-- Insert record 101
INSERT INTO student (s_id, F_name, L_name, address, age, birth_year, gender, practical_performed)
VALUES (101, 'Dhiraj', 'Waghmare', 'Pune', 21, 2004, 'Male', 'P-1');

-- Insert record 102
INSERT INTO student (s_id, F_name, L_name, address, age, birth_year, gender, practical_performed)
VALUES (102, 'Karan', 'Gholap', 'Pune', 22, 2003, 'Male', 'P-3');

-- Insert record 103 (partial data)
INSERT INTO student (s_id, F_name, gender, practical_performed)
VALUES (103, 'Sneha', 'FeMale', 'P-1,P-4');

-- Insert record 104
INSERT INTO student (s_id, F_name, L_name, address, age, gender, practical_performed)
VALUES (104, 'Pankaja', 'Tiwari', 'Mumbai', 25, 'FeMale', 'P-1');

-- Insert record 105
INSERT INTO student (s_id, F_name, L_name, address, age, gender, practical_performed)
VALUES (105, 'Akshaya', 'Iyer', 'Bangalore', 39, 'FeMale', 'P-1,P-3');

select * from student;

-- change records in existing table --
 
SET SQL_SAFE_UPDATES = 0;    -- ->(needs to run befor change or update record) --

UPDATE student 
SET F_name = 'Pratik', 
L_name = 'Patil', 
address = 'Mumbai' 
WHERE s_id = 102;

UPDATE student 
SET F_name = 'Aditi', 
L_name = 'sherkar', 
address = 'Mumbai' 
WHERE s_id = 103;

UPDATE student   			-- update inforamation using id --
SET  age = 22, 
address = 'pune' 
WHERE s_id = 104;

UPDATE student  				-- change id no--
SET s_id = 104
WHERE s_id = 105;


-- delete row from exsisting table  -- 

DELETE FROM student WHERE s_id = 104;


