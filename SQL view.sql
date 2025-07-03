-- database
CREATE DATABASE EcommerceDB;

USE EcommerceDB;

-- department table
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name TEXT
);
-- Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name TEXT,
    salary INT,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- sample values
INSERT INTO Departments VALUES
 (1, 'IT'), 
 (2, 'HR');
 
 INSERT INTO Employees VALUES
(101, 'Anjali', 60000, 1),
(102, 'Rahul', 75000, 1),
(103, 'Sneha', 50000, 2);

-- view
CREATE VIEW EmployeeList AS
SELECT emp_id, name, salary FROM Employees;

-- usage
SELECT * FROM EmployeeList;

-- Join View
CREATE VIEW EmployeeDeptView AS
SELECT E.name, E.salary, D.dept_name
FROM Employees E
JOIN Departments D ON E.dept_id = D.dept_id;

-- Usage
SELECT * FROM EmployeeDeptView WHERE salary > 60000;

-- View with Calculated Columns
CREATE VIEW SalaryGrade AS
SELECT name,
       salary,
       CASE 
           WHEN salary >= 70000 THEN 'High'
           WHEN salary >= 50000 THEN 'Medium'
           ELSE 'Low'
       END AS grade
FROM Employees;

-- Updating View Data
UPDATE EmployeeList SET salary = 65000 WHERE emp_id = 101;

