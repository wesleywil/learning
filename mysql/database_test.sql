--Retrieve the names and ages of all employees.
SELECT name, age FROM employees;
-- Get the names of employees who work in the "HR" department.
SELECT e.name FROM employees as e, departments as d WHERE e.department_id = d.id AND d.name = 'HR';
-- Find the departments that have more than 3 employees.
DONT KNOW
-- Get the names and ages of employees who are working on "Project A" WRONG
select e.name, e.age FROM employees as e, projects as p, departments as d WHERE p.name = "Project A" and e.department_id = 1 and p.department_id = 1;
-- Find the departments that do not have any projects assigned.
DONT KNOW
-- Get the names and departments of employees who are younger than 30 and work on projects in the "IT" department
DONT KNOW
-- Find the total number of employees in each department.
 SELECT COUNT(e.name), d.name FROM employees as e, departments as d WHERE d.id = e.department_id GROUP BY d.name;
--Get the names and ages of employees in descending order of their ages.
SELECT e.name, e.age FROM employees as e ORDER BY age DESC
--Find the projects and their associated departments, sorted alphabetically by project names.
SELECT p.name, d.name FROM projects as p, departments as d WHERE p.department_id = d.id ORDER BY p.name ASC;
--Get the names of employees who have not been assigned to any project.
IMPOSSIBLE, THERES NO CONNECTIONS BETWEEN EMPLOYEES AND PROJECTS TABLES


-- RESULTS AND OTHER WAYS

--Get the names of employees who work in the "HR" department.
SELECT e.name 
FROM employees AS e
JOIN departments AS d ON e.department_id = d.id
WHERE d.name = 'HR';

-- Find the departments that have more than 3 employees.
SELECT d.name FROM departments AS d JOIN employees AS e ON d.id = e.department_id GROUP BY d.name HAVING COUNT(*) > 3;

-- Get the names and ages of employees who are working on "Project A".
SELECT e.name, e.age
FROM employees AS e
JOIN projects AS p ON e.department_id = p.department_id
WHERE p.name = 'Project A';

--Find the departments that do not have any projects assigned.
SELECT d.name
FROM departments AS d
LEFT JOIN projects AS p ON d.id = p.department_id
WHERE p.department_id IS NULL;

-- Get the names and departments of employees who are younger than 30 and work on projects in the "IT" department.
SELECT e.name, d.name
FROM employees AS e
JOIN departments AS d ON e.department_id = d.id
JOIN projects AS p ON e.department_id = p.department_id
WHERE e.age < 30 AND d.name = 'IT';

-- Find the total number of employees in each department.

SELECT d.name, COUNT(*) AS total_employees
FROM departments AS d
JOIN employees AS e ON d.id = e.department_id
GROUP BY d.name;

--Get the names and ages of employees in descending order of their ages.
SELECT name, age
FROM employees
ORDER BY age DESC;

-- Find the projects and their associated departments, sorted alphabetically by project names.
SELECT p.name AS project_name, d.name AS department_name
FROM projects AS p
JOIN departments AS d ON p.department_id = d.id
ORDER BY p.name ASC;

--  Get the names of employees who have not been assigned to any project.
IMPOSSIBLE, THERES NO CONNECTIONS BETWEEN EMPLOYEES AND PROJECTS TABLES


--- MY ANSWERS 2


-- Find the average age of employees in each department.
SELECT AVG(e.age) as average_age, d.name FROM employees as e JOIN departments as d ON e.department_id = d.id GROUP BY d.name
-- Get the names and salaries of employees who have a salary greater than $5000.
IMPOSSIBLE
-- Find the departments that have employees older than 40.
SELECT d.name, e.name FROM departments as d JOIN employees as e ON e.department_id = d.id and e.age > 40;
-- Get the names and project names of employees who are assigned to more than one project.
IMPOSSIBLE
-- Find the departments that have no employees assigned.
DONT KNOW
SELECT d.name FROM departments as d JOIN employees as e ON e.department_id = d.id WHERE d.id IS NULL;
-- Get the names and ages of the oldest employee in each department.
DONT KNOW
-- Find the projects that have more than 2 employees assigned.
DONT KNOW
-- Get the names and salaries of employees who have the highest salary in their respective department.
IMPOSSIBLE
-- Find the average salary of employees for each department, sorted in descending order of average salary.
IMPOSSIBLE
-- Get the names and ages of employees who have the same age as their manager.
IMPOSSIBLE



-- RESULTS AND OTHER WAYS


-- Find the average age of employees in each department.
SELECT AVG(e.age) as average_age, d.name FROM employees as e JOIN departments as d ON e.department_id = d.id GROUP BY d.name
-- Get the names and salaries of employees who have a salary greater than $5000.
IMPOSSIBLE

-- Find the departments that have employees older than 40.
SELECT d.name, e.name FROM departments as d JOIN employees as e ON e.department_id = d.id and e.age > 40;

-- Get the names and project names of employees who are assigned to more than one project.

IMPOSSIBLE

-- Find the departments that have no employees assigned.
SELECT d.name
FROM departments AS d
LEFT JOIN employees AS e ON e.department_id = d.id
WHERE e.id IS NULL;
-- Get the names and ages of the oldest employee in each department.
SELECT e.name, e.age
FROM employees AS e
JOIN (
    SELECT department_id, MAX(age) AS max_age
    FROM employees
    GROUP BY department_id
) AS max_age_table ON e.department_id = max_age_table.department_id AND e.age = max_age_table.max_age;
-- Find the projects that have more than 2 employees assigned.
IMPOSSIBLE
-- Get the names and salaries of employees who have the highest salary in their respective department.
IMPOSSIBLE
-- Find the average salary of employees for each department, sorted in descending order of average salary.
IMPOSSIBLE
-- Get the names and ages of employees who have the same age as their manager.
IMPOSSIBLE