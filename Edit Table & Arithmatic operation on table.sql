rename table `products-1000` to products;

select*from products;


-- Edit table & Drop 2 column's from table -- 

alter table products
drop column Description,
drop column EAN;

-- Aithmatic Operators = +,*,/,-,% --
select 10+7;
select 10-7;
select 10*7;
select 10/7;         -- -> it return value in float 
select 10%7;

-- only disply name, price and index column from products table --
select `index`,name,price from products;

-- Add rs 100 on price from produts table --
select `index`,name,price+100  from products;

-- Display old and new price column from products table -- 
select `index`,name,price as old_price,price+100 as new_price  from products;

-- Lets Check how much total values does each product has -- 

select `index`,name,stock ,stock*price as Total_value from products;
