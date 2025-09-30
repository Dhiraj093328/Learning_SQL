-- Logical Operators  = AND,OR,NOT --
-- AND Operator --
SELECT 
    `index`,name,  price, stock
FROM
    products
WHERE
    price > 200 AND stock < 100
    order by price,stock;
    
-- Q Price less than 100 and stock more than 50 --

SELECT 
    `index`,name,  price, stock
FROM
    products
WHERE
    price < 100 AND stock > 50
    order by price,stock;
    
-- OR Operators --
  
  SELECT 
    `index`,name,  price, stock
FROM
    products
WHERE
    price < 100 OR stock > 100
    order by price,stock;
    
-- NOT Operators --
select name, price from products
where not price =200
limit 5;  
  
 