# SQL_views
 usage of SQL views for query abstraction, simplification, and security.


##  Objective
This practice focuses on using SQL views to abstract query logic, protect sensitive columns, and simplify query writing.

##  Tables Used
- Employees
- Departments

##  Views Created
1. `EmployeeList` – basic view with selected columns
2. `EmployeeDeptView` – join view to show employee and department name
3. `SalaryGrade` – view with salary-based classification

## Usage
SELECT * FROM EmployeeDeptView WHERE dept_name = 'IT';
