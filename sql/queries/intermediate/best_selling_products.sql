/*
Query: Best selling products
Description: Calculates total quantity sold per product and sorts by highest quantity sold.
*/

SELECT 
    p.product_name,
    SUM(oi.quantity) as total_quantity
FROM products p 
INNER JOIN order_items oi
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY SUM(oi.quantity) DESC