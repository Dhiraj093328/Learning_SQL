-- Comparison Operators ->   < , > , = , <= , >= , != --

-- Display products price only greater than 100 --
select `index`, name,price from products where price > 100
order by price;

-- Display products rice only less than 200 --
select `index`, name,price from products where price < 200
order by price;

-- COUNT total no products in price in under 200 
SELECT COUNT(*)
FROM products
WHERE price < 200;

-- find a product which has price is exactly 74 --
 

