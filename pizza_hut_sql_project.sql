-- ==============================
-- Pizza Hut Sales Analysis Project
-- ==============================

-- Create Database
CREATE DATABASE pizza_hut;
USE pizza_hut;

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    order_time TIME
);

-- Order Details Table
CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT,
    pizza_id VARCHAR(50),
    quantity INT
);

-- Sample Analysis Queries

-- 1. Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- 2. Total Quantity Sold
SELECT SUM(quantity) AS total_pizzas_sold
FROM order_details;

-- 3. Orders per Day
SELECT order_date, COUNT(order_id) AS orders_per_day
FROM orders
GROUP BY order_date;
