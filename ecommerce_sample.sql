
-- Create database
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- Drop tables if they already exist
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Orders;

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    country VARCHAR(50)
);

-- Create Products table
CREATE TABLE Products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    category VARCHAR(50)
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert sample data into Customers
INSERT INTO Customers (customer_name, email, country) VALUES
('Alice Smith', 'alice@example.com', 'USA'),
('Bob Johnson', 'bob@example.com', 'Canada'),
('Charlie Lee', 'charlie@example.com', 'UK');

-- Insert sample data into Products
INSERT INTO Products (product_name, price, category) VALUES
('Laptop', 999.99, 'Electronics'),
('Headphones', 199.99, 'Electronics'),
('Coffee Mug', 12.99, 'Kitchen');

-- Insert sample data into Orders
INSERT INTO Orders (customer_id, product_id, quantity, order_date, total_amount) VALUES
(1, 1, 1, '2024-01-10', 999.99),
(2, 2, 2, '2024-01-15', 399.98),
(3, 3, 4, '2024-01-20', 51.96);
