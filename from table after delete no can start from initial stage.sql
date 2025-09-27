use test1;
create table cars(
id int primary key auto_increment, -- auto increment feature to id which automatically add id --
car_name varchar(20)
);

-- insert data inoto it --
insert into cars(car_name)
values("Audi"),("BMW"),("TOYOTA");

select  * from cars;

delete from cars  where id = 3;

insert into cars(car_name)
values("suzuki");

set sql_safe_updates=0;

delete from cars;

insert into cars(car_name)
values("HYUNDAI");

-- command to delete Entire data and reset auto increment data -- 
-- means it can start new record from 1 and delete Entire data-- 

truncate cars;     -- >auto icrement rest command --

insert into cars(car_name)
values("HYUNDAI");
