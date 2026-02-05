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
