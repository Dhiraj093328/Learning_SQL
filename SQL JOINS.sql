-- Joins 
-- join is a temporary connection between tables to retrive data from both tables at once based on common column

-- Types of join 
-- 1] inner join
-- 2] left join
-- 3] right join
-- 4]cross join
-- 5]self join

CREATE TABLE Dept (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Dept (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Operations');







CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);

INSERT INTO Employees (emp_id, emp_name, dept_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', 3),
(104, 'David', 3),
(105, 'Eve', 4),
(106, 'Frank', 5),
(107, 'Grace', 2),
(108, 'Hannah', 1),
(109, 'Ian', NULL),
(110, 'Jack', 3),
(111, 'Kathy', 4),
(112, 'Leo', 5),
(113, 'Mona', 6),
(114, 'Nina', NULL),
(115, 'Oscar', 7);

select*from employees;
-- 1] inner join 
select e.emp_name,d.dept_name,e.dept_id from
employees e
inner join
dept d on e.dept_id=d.dept_id;

-- 2] left join 
select e.emp_name,d.dept_name,e.dept_id from
employees e
left join
dept d on e.dept_id=d.dept_id;

-- 3] right join 
select e.emp_name,d.dept_name,e.dept_id from
employees e
right join
dept d on e.dept_id=d.dept_id;
