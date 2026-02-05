-- File: queries/orders_with_customers.sql
/*
Query: Orders with customer names
Description: Lists each order along with the name of the customer who placed it.
*/

SELECT
    o.order_id,
    c.full_name AS customer_name,
    o.order_date,
    o.total_amount
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
ORDER BY o.order_id;
