CREATE TABLE `learning`.`Departments` (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL
);

CREATE TABLE `learning`.`Employees` (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(id)
);

CREATE TABLE `learning`.`Projects` (
	  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES Departments(id)
);

INSERT INTO  `learning`.`Departments` (name) VALUES
  ('HR'),
  ('Finance'),
  ('Marketing'),
  ('IT');

INSERT INTO `learning`.`Employees` (name, age, department_id) VALUES
  ('John Doe', 30, 1),
  ('Jane Smith', 28, 1),
  ('Michael Johnson', 35, 2),
  ('Emily Davis', 32, 2),
  ('David Brown', 29, 1),
  ('Sarah Wilson', 27, 3),
  ('Robert Taylor', 33, 2),
  ('Olivia Martinez', 31, 3);

INSERT INTO `learning`.`Projects` (name, department_id) VALUES
  ('Project A', 1),
  ('Project B', 2),
  ('Project C', 3),
  ('Project D', 1),
  ('Project E', 2),
  ('Project F', 3),
  ('Project G', 4),
  ('Project H', 4);

-- HOW TO SELECT ALL RECORDS FROM A TABLE
SELECT * FROM `learning`.`Employees`;
SELECT * FROM `learning`.`Departments`;
SELECT * FROM `learning`.`Projects`;

-- WHERE CLAUSE
-- Select all employees where the department_id is equal to departments with the Marketing name and employees with less than 30 years old
SELECT *
FROM  `learning`.`Employees`
WHERE department_id = (SELECT id FROM `learning`.`Departments` WHERE name = 'Marketing')
  AND age < 30;

-- HAVING CLAUSE
-- we join the Departments and Employees tables based on the dapartment_id, then group the results by calculating the cound of the employees using COUNT() function. Finally, we use the HAVING clause to filter the results and retrieve only the departments with more than 2 employees
SELECT d.name, COUNT(e.id) AS employee_count
FROM Departments d
JOIN Employees e ON d.id = e.department_id
GROUP BY d.id
HAVING employee_count > 2;

-- INNER JOIN
-- performs a inner join between 'Employees' and 'Departments' tables based on the department_id column. It retrieves the naes of employees along with their corresponding department names.

SELECT e.name AS employee_name, d.name AS department_name
FROM Employees e
INNER JOIN Departments d ON e.department_id = d.id;

--LEFT JOIN
-- performs a left join between the 'Employees' and 'Departments' tables. It retrieves the names of employees along with their corresponding department names. In case an employee does not have an department(department_id is NULL), the query will still include that employee will a NULL value for the department name'
SELECT e.name AS employee_name, d.name AS department_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.id;

-- RIGHT JOIN
--This query performs a right join between the "Employees" and "Departments" tables. It retrieves the names of employees along with their corresponding department names. In case a department does not have any employees associated with it, the query will still include that department with a NULL value for the employee name.
SELECT e.name AS employee_name, d.name AS department_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.id;

-- FULL JOIN
-- Full join is not supported by the MYSQL so we need to combine LEFT JOIN and RIGHT JOIN
--In this query, we first perform a LEFT JOIN to include all records from the "Employees" table and matching records from the "Departments" table. Then, we use UNION to combine the results with a RIGHT JOIN, which includes all records from the "Departments" table and matching records from the "Employees" table. Finally, we add a WHERE clause to filter out the rows where the employee's department_id is NULL, as these are the unmatched records from the LEFT JOIN.
SELECT e.name AS employee_name, d.name AS department_name
FROM Employees e
LEFT JOIN Departments d ON e.department_id = d.id
UNION
SELECT e.name AS employee_name, d.name AS department_name
FROM Employees e
RIGHT JOIN Departments d ON e.department_id = d.id
WHERE e.department_id IS NULL;

-- GROUP BY
-- This query will count how many employees for each department, this allows you to see how many employees are present in each department
SELECT d.name AS department_name, COUNT(e.id) AS employee_count
FROM Departments d
LEFT JOIN Employees e ON d.id = e.department_id
GROUP BY d.id, d.name;

-- UNION
SELECT name FROM Employees WHERE age < 30
UNION 
SELECT name FROM Employees WHERE department_id = 1;

-- UNION ALL
SELECT name FROM Employees WHERE age < 30
UNION ALL
SELECT name FROM Employees WHERE department_id = 1;

-- INDEX
CREATE INDEX idx_email ON Customers (email);

-- ORDER BY
SELECT * FROM Employees ORDER BY name ASC/DESC;

-- CREATE DATABASE
CREATE DATABASE database_name;

-- SELECT TOP N
-- top 2
SELECT * FROM Employees LIMIT 2;

-- WILDCARD CHARACTERS
-- name start with J
SELECT * FROM Employees WHERE name LIKE 'J%';
-- name ends with son
SELECT * FROM Employees WHERE name LIKE '%son';
-- name contain doe anywhere in the name
SELECT * FROM Employees WHERE name LIKE '%doe%';

