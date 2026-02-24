/*
Query: Orders with customer names
Description: Lists each order along with the full name of the customer who placed it.
*/

SELECT 
    orders.order_id, 
    orders.order_date, 
    orders.total_amount, 
    customers.full_name 
FROM orders
INNER JOIN customers
ON customers.customer_id = orders.customer_id