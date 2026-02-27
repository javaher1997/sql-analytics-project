/*
Query: Monthly revenue
Description: Calculates total revenue per month based on order dates.
*/

SELECT
    strftime('%Y-%m', order_date) AS order_month,
    SUM(total_amount) AS total_revenue
FROM orders
GROUP BY strftime('%Y-%m', order_date)
ORDER BY order_month;