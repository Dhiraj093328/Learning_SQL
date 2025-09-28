select * from`products-1000`;
									-- ## order by clause ## 
-- - it orders the table according to the given column
-- list the products lowest to highest (ascending order)according to price column --
select * from`products-1000`
order by price;
 
 -- list the products highest to lowest (descending order)according to price column --
select * from`products-1000`
order by price desc;                   -- -> "desc" = keyword for descemding order

-- Q which product is highest stock -- 

select * from`products-1000`
order by stock desc              -- -> "desc" for highest to lowest stock
limit 1;                  		 -- -> "limit" keyword use for find only limited valuse to be find

-- Q which 5 products is highest in stock -- 

select * from`products-1000`
order by price desc
limit 5;

-- Q display a product which has a 2nd (Second) highest price --
select name, price from`products-1000`
order by price desc
limit 1 offset 1;       -- ..only one 2nd highest price want so use "offset" keyword

-- but in the above case there are 4 price are same then difficult to find answer--
-- so i want to find 2nd highest price -- 

select distinct(Price) price from`products-1000`   -- -> [distinct() Keyword use to find differnt value
order by price desc                                     -- beacause in this case 4 highest values are same]
limit 1 offset 1;       -- only one 2nd highest price want so use "offset" keyword



-- in the above case only price show cant show name so i want tofind 2nd highest price with name --

 
SELECT name, price                  --  2nd highest price with name -- 
FROM `products-1000`
WHERE price = (
    SELECT DISTINCT price
    FROM `products-1000`
    ORDER BY price DESC
    LIMIT 1 OFFSET 1
);



