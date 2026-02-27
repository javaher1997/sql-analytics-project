/*
Query: Most profitable products
Description: Calculates total revenue per product and sorts by  highest revenue.
*/

SELECT 
    p.product_name,
    SUM(oi.quantity * oi.unit_price) as total_revenue
FROM products p 
INNER JOIN order_items oi
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC