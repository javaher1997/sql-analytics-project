/*
Query: Order items with product names
Description: Lists each order item with its product name, quantity, and unit price.
*/

SELECT 
    order_items.order_item_id,
    order_items.order_id,
    products.product_name,
    order_items.quantity,
    order_items.unit_price
FROM order_items
INNER JOIN products
ON order_items.product_id = products.product_id
