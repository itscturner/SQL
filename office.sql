-- 1. Create Office Database
CREATE DATABASE office;

-- 2. Use Office Database
USE office;

-- 3. Create Employee Table
CREATE TABLE employee (
  employee_id INT PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  department_id INT,
);  

-- 4. View Employee Table
DESCRIBE employee;

-- 5. Create Department Table
 CREATE TABLE department (
   department_id INT PRIMARY KEY,
   departmnet_name VARCHAR(20),
   FOREIGN KEY(#####) REFERENCES employee(employee_id) ON DELETE SET NULL;

-- 6. View Department Table
DESCRIBE department;

-- 7. Set Foreign Key In Employee Table
ALTER TABLE employee
ADD FOREIGN KEY(department_id)
REFERENCES department(department_id)
ON DELETE SET NULL;

-- 8. Add Employees To Employee Table
INSERT INTO employee (employee_id, first_name, last_name, department_id)
VALUES
  (1, "Michael", "Scott", 101),
  (2, "Dwight", "Schrute", 102),
  (3, "Jim", "Halpert", 102),
  (4, "Pam", "Beesly", 103),
  (5, "Kevin", "Malone", 104),
  (6, "Toby", "Flenderson", 105),
  (7, "Darryl", "Philbin", 106);

-- 9. View Data From Employee Table
SELECT * FROM employee;

-- 10. Add Departments To Department Table
INSERT INTO department (department_id, department_name)
VALUES
  (101, "Management"),
  (102, "Sales"),
  (103, "Reception"),
  (104, "Accounting"),
  (105, "Human Resources"),
  (106, "Warehouse");

-- 11. View Data From Department Table
SELECT * FROM department;

-- 12. View Sales Information From Department Table
SELECT department_name
FROM department
WHERE department_id = 102;

-- 13. Update Row
UPDATE employee
SET department_id = 102
WHERE employee_id = 4;

-- 14. Delete Row
DELETE FROM employee
WHERE employee_id = 3;

-- 15. Ensure Above Changes To Employee Table Worked
SELECT * FROM employee;
