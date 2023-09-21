-- With God's help
-- Asaf AI Perets
-- Answer

-- 1
SELECT * FROM employees

-- 2
SELECT COUNT(*) AS PRODUCTS_AMOUNT FROM products

-- 4
SELECT * FROM products
WHERE supplier_id = 2
ORDER BY unit_price DESC LIMIT 3


-- 7
SELECT categories.category_name, AVG(products.unit_price) AS AVG_CATEGORIES
FROM categories INNER JOIN products
ON products.category_id = categories.category_id
GROUP BY categories.category_name
ORDER BY AVG_CATEGORIES DESC LIMIT 5

-- 8
SELECT employees.first_name, employees.last_name 
,territories.territory_description
FROM employees INNER JOIN employee_territories
ON employees.employee_id = employee_territories.employee_id
INNER JOIN territories
ON employee_territories.territory_id = territories.territory_id

-- 9 
SELECT employees.first_name, employees.last_name, 
COUNT(orders.employee_id) AS ORDERS_NUMBER
FROM employees INNER JOIN orders
ON employees.employee_id = orders.employee_id
GROUP BY employees.first_name, employees.last_name
HAVING COUNT(orders.employee_id) > 100
