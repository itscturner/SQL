-- 1. Create Store Database
CREATE DATABASE store;

-- 2. Use Store Database
USE store;

-- 3. Create Customers Table
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(15),
  address VARCHAR(255)
  );

-- 4. Show Customers Table
DESCRIBE customers;

-- 5. Add Customer To Customers Table
INSERT INTO customers (customer_id, first_name, last_name, email, phone, address)
VALUES
  (1, "John", "Smith", "jsmith@email.com", "123-456-7890", "123 Main Street"),
  (2, "Adam", "Price", "adamprice@email.com", "908-765-4321", "908 Main Street");

-- 6. View Customers Table
SELECT * FROM customers;

-- 7. Update Row
UPDATE customers
SET last_name = 'Davis', email = 'adam.davis@email.com'
WHERE customer_id = 2;

-- 8. Delete Row
DELETE FROM customers
WHERE customer_id = 1;

-- 9. Query First Name, Last Name and Email, and Order By Last Name
SELECT customers.first_name, customers.last_name, customers.email
FROM customers
ORDER BY last_name;
