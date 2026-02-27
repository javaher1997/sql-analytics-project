/*
Query: Customers with their total spending
Description: Lists customers with the total amount they have spent, sorted by highest spending.
*/

SELECT 
    c.customer_id, 
    c.full_name,
    SUM(total_amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.full_name
ORDER BY SUM(total_amount) DESC