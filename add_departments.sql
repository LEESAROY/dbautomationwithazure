-- full name - Leesa Keval Makwana, student ID - 9019432, and class number - PROG8850-24F
-- Creating departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

-- Inserting sample data into departments table
INSERT INTO departments (department_id, department_name, location) VALUES
(1, 'HR', 'Canada'),
(2, 'IT', 'USA'),
(3, 'Business', 'Mexico');

-- Creating employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    hire_date DATE
);

-- Updating location column in departments table
ALTER TABLE departments MODIFY location VARCHAR(150);

-- Deleting a specific row from departments table
DELETE FROM departments WHERE department_id = 3;