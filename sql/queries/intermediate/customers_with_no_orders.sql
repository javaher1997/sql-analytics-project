/*
Query: Customers with no orders
Description: Lists customers who have not placed any orders.
*/

SELECT 
    c.customer_id, 
    c.full_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id is NULL

