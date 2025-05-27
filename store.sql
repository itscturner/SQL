-- Create Store Database
CREATE DATABASE store;

-- Use Store Database
USE store;

-- Create Customers Table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(15),
  address VARCHAR(255)
  );

-- Show Customers Table
DESCRIBE customers;

-- Add Customer To Customers Table
INSERT INTO customers (customer_id, first_name, last_name, email, phone, address)
VALUES
  (1, "John", "Smith", "jsmith@email.com", "123-456-7890", "123 Main Street"),
  (2, "Adam", "Price", "adamprice@email.com", "908-765-4321", "908 Main Street");

-- View Customers Table
SELECT * FROM customers;
