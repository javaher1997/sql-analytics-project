/*
Project: SQLite E-commerce Database
Author: Javaher Nourian
Description:
Populates the database with sample data for testing and analysis.
Includes customers, products, orders, and order items.

Usage:
Run after schema.sql
*/

-- =========================
-- Customers
-- =========================
INSERT INTO customers (customer_id, full_name, email, country, signup_date)
VALUES
(1, 'Ali Rezaei', 'ali.rezaei@email.com', 'Iran', '2024-01-15'),
(2, 'Sara Mohammadi', 'sara.m@yahoo.com', 'Germany', '2023-02-10'),
(3, 'John Smith', 'john.smith@email.com', 'USA', '2023-03-05'),
(4, 'Maria Garcia', 'maria.g@gmail.com', 'Spain', '2023-06-20'),
(5, 'Jake Brown', 'j.brown@email.com', 'Brazil', '2023-09-25'),
(6, 'Gisoo Borhani', 'gisoo.b@email.com', 'Iran', '2023-08-08'),
(7, 'Robin Jones', 'robin_jones@yahoo.com', 'USA', '2023-07-17'),
(8, 'Peter James', 'peter1997@gmail.com', 'Brazil', '2023-02-09'),
(9, 'Anna Muller', 'anna.muller@gmail.com', 'Germany', '2023-04-12'),
(10, 'David Wilson', 'david.w@email.com', 'UK', '2023-05-30'),
(11, 'Fatemeh Karimi', 'f.karimi@email.com', 'Iran', '2023-11-02'),
(12, 'Lucas Pereira', 'lucas.p@gmail.com', 'Brazil', '2023-10-18'),
(13, 'Emily Clark', 'emily.clark@yahoo.com', 'Canada', '2023-01-22'),
(14, 'Mohammad Hosseini', 'm.hosseini@email.com', 'Iran', '2023-12-05'),
(15, 'Sofia Rossi', 'sofia.rossi@gmail.com', 'Italy', '2023-06-14');

-- =========================
-- Products
-- =========================
INSERT INTO products (product_id, product_name, category, price)
VALUES
(1, 'Laptop Pro 14"', 'Electronics', 1200.00),
(2, 'Wireless Mouse', 'Electronics', 25.99),
(3, 'Mechanical Keyboard', 'Electronics', 89.50),
(4, 'Smartphone X', 'Electronics', 999.99),
(5, 'Noise Cancelling Headphones', 'Electronics', 199.99),
(6, 'Office Chair', 'Furniture', 150.00),
(7, 'Standing Desk', 'Furniture', 350.00),
(8, 'LED Desk Lamp', 'Furniture', 45.00),
(9, 'Notebook Pack (5 pcs)', 'Stationery', 12.50),
(10, 'Ballpoint Pen Set', 'Stationery', 8.99),
(11, 'Water Bottle Stainless Steel', 'Accessories', 18.75),
(12, 'Backpack Travel 40L', 'Accessories', 65.00),
(13, 'Fitness Smart Watch', 'Wearables', 220.00),
(14, 'Bluetooth Speaker', 'Electronics', 79.99),
(15, 'USB-C Hub Adapter', 'Electronics', 49.99);

-- =========================
-- Orders
-- =========================
INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES
(1, 3, '2024-02-01', 1245.99),
(2, 7, '2024-02-03', 199.99),
(3, 1, '2024-02-05', 350.00),
(4, 5, '2024-02-08', 89.50),
(5, 2, '2024-02-10', 420.00),
(6, 9, '2024-02-12', 65.00),
(7, 4, '2024-02-14', 999.99),
(8, 6, '2024-02-16', 79.99),
(9, 1, '2024-02-18', 150.00),
(10, 8, '2024-02-20', 220.00),
(11, 10, '2024-02-22', 45.00),
(12, 12, '2024-02-24', 18.75),
(13, 2, '2024-02-26', 65.00),
(14, 3, '2024-02-28', 1200.00),
(15, 5, '2024-03-01', 89.99);

-- =========================
-- Order Items
-- =========================
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price)
VALUES
(1, 1, 1, 1, 1200.00),
(2, 1, 2, 1, 45.99),
(3, 2, 5, 1, 199.99),
(4, 3, 7, 1, 350.00),
(5, 4, 3, 1, 89.50),
(6, 5, 6, 2, 150.00),
(7, 5, 9, 1, 12.50),
(8, 6, 12, 1, 65.00),
(9, 7, 4, 1, 999.99),
(10, 8, 14, 1, 79.99),
(11, 9, 6, 1, 150.00),
(12, 10, 13, 1, 220.00),
(13, 11, 8, 1, 45.00),
(14, 12, 11, 1, 18.75),
(15, 13, 12, 1, 65.00),
(16, 14, 1, 1, 1200.00),
(17, 15, 3, 1, 89.99),
(18, 3, 10, 3, 8.99),
(19, 4, 9, 2, 12.50),
(20, 6, 10, 1, 8.99),
(21, 7, 5, 1, 199.99),
(22, 8, 2, 1, 45.99),
(23, 9, 11, 2, 18.75),
(24, 10, 14, 1, 79.99),
(25, 11, 8, 1, 45.00),
(26, 12, 10, 1, 8.99),
(27, 13, 9, 2, 12.50),
(28, 15, 2, 1, 45.99);
