
-- change the name of table -- 
alter table `products-100`
rename to products;

select*from products;

-- change the price of product 1 from products 265 to 300 -- 
update products
set price=300
where `index` =1;

-- lets needs off the database security for update table --
set sql_safe_updates= 0;   -- 0 for security off & 1 for security on --  

-- increaese price in 10 rs which is index 5-- 
update products
set price = price+10
where `index`=5;

-- increaese price 10% which is index 42--
update products
set price = price+price*10/100 
where `index`=42;

-- short trick for increse price in % -- 

-- for increase price in 20% --> use formula "Price*1.20"
-- for increase price in 10% --> use formula "Price*1.10"

update products
set price = price*1.10 
where `index`=42;

-- Delete from table --
delete from products 
where `index`=10;

set sql_safe_updates= 1;



