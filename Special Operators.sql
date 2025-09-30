-- Special Operators --
-- between --    
SELECT 
    name, price, stock
FROM
    products
WHERE
    price BETWEEN 200 AND 300
ORDER BY price
LIMIT 5;