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
