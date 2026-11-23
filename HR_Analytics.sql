CREATE TABLE employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
gender VARCHAR(20),
age	INT,
department_id INT REFERENCES departments(department_id),
salary	DECIMAL(10,2),
hire_date DATE,
exit_date DATE
);

CREATE TABLE departments(
department_id INT PRIMARY KEY,
department_name	VARCHAR(100),
location VARCHAR(100)
);

CREATE TABLE attendance(
attendance_id INT PRIMARY KEY,
employee_id	INT,
attendance_date	DATE,
status	VARCHAR(20)
);

CREATE TABLE performance(
performance_id	INT PRIMARY KEY,
employee_id	INT,
performance_rating INT,
review_year	INT
);


INSERT INTO employees
(employee_id, employee_name, gender, age, department_id,
 salary, hire_date, exit_date)
VALUES
(1, 'Rahul', 'Male', 28, 2, 65000, '2021-03-10', NULL),
(2, 'Nikhil', 'Male', 29, 4, 55000, '2022-08-18', NULL),
(3, 'Amina', 'Female', 30, 1, 50000, '2020-04-22', NULL),
(4, 'Sneha', 'Female', 31, 5, 48000, '2020-07-15', '2025-03-20'),
(5, 'Akash', 'Male', 26, 4, 40000, '2023-09-01', NULL),
(6, 'Diya', 'Female', 28, 2, 75000, '2020-05-10', NULL),
(7, 'Hiba', 'Female', 23, 1, 32000, '2024-06-01', NULL),
(8, 'Kiran', 'Male', 33, 4, 70000, '2019-10-12', '2025-08-15'),
(9, 'Neha', 'Female', 29, 5, 52000, '2021-02-20', NULL),
(10, 'Amal', 'Male', 25, 2, 42000, '2023-04-10', NULL),
(11, 'Sara', 'Female', 27, 3, 58000, '2022-12-05', NULL),
(12, 'Adil', 'Male', 30, 4, 62000, '2020-09-18', NULL),
(13, 'Priya', 'Female', 26, 1, 38000, '2023-03-15', '2026-02-10'),
(14, 'Sanjay', 'Male', 34, 5, 80000, '2019-06-25', '2026-05-30');

INSERT INTO departments
(department_id, department_name, location)
VALUES
(1, 'HR', 'Kochi'),
(2, 'IT', 'Calicut'),
(3, 'Finance', 'Bangalore'),
(4, 'Sales', 'Chennai'),
(5, 'Marketing', 'Kochi');

INSERT INTO attendance
(attendance_id, employee_id, attendance_date, status)
VALUES
(1, 1, '2026-11-01', 'Present'),
(2, 1, '2026-11-02', 'Present'),
(3, 1, '2026-11-03', 'Present'),
(4, 1, '2026-11-04', 'Present'),
(5, 1, '2026-11-05', 'Present'),

(6, 2, '2026-11-01', 'Present'),
(7, 2, '2026-11-02', 'Present'),
(8, 2, '2026-11-03', 'Absent'),
(9, 2, '2026-11-04', 'Present'),
(10, 2, '2026-11-05', 'Present'),

(11, 3, '2026-11-01', 'Present'),
(12, 3, '2026-11-02', 'Leave'),
(13, 3, '2026-11-03', 'Present'),
(14, 3, '2026-11-04', 'Present'),
(15, 3, '2026-11-05', 'Present'),

(16, 4, '2026-11-01', 'Present'),
(17, 4, '2026-11-02', 'Present'),
(18, 4, '2026-11-03', 'Present'),
(19, 4, '2026-11-04', 'Present'),
(20, 4, '2026-11-05', 'Present'),

(21, 5, '2026-11-01', 'Absent'),
(22, 5, '2026-11-02', 'Present'),
(23, 5, '2026-11-03', 'Present'),
(24, 5, '2026-11-04', 'Leave'),
(25, 5, '2026-11-05', 'Present'),

(26, 6, '2026-11-01', 'Present'),
(27, 6, '2026-11-02', 'Present'),
(28, 6, '2026-11-03', 'Present'),
(29, 6, '2026-11-04', 'Absent'),
(30, 6, '2026-11-05', 'Present'),

(31, 7, '2026-11-01', 'Present'),
(32, 7, '2026-11-02', 'Present'),
(33, 7, '2026-11-03', 'Present'),
(34, 7, '2026-11-04', 'Present'),
(35, 7, '2026-11-05', 'Present'),

(36, 8, '2026-11-01', 'Present'),
(37, 8, '2026-11-02', 'Absent'),
(38, 8, '2026-11-03', 'Present'),
(39, 8, '2026-11-04', 'Present'),
(40, 8, '2026-11-05', 'Leave'),

(41, 9, '2026-11-01', 'Present'),
(42, 9, '2026-11-02', 'Present'),
(43, 9, '2026-11-03', 'Present'),
(44, 9, '2026-11-04', 'Present'),
(45, 9, '2026-11-05', 'Present'),

(46, 10, '2026-11-01', 'Present'),
(47, 10, '2026-11-02', 'Present'),
(48, 10, '2026-11-03', 'Absent'),
(49, 10, '2026-11-04', 'Present'),
(50, 10, '2026-11-05', 'Present'),

(51, 11, '2026-11-01', 'Present'),
(52, 11, '2026-11-02', 'Leave'),
(53, 11, '2026-11-03', 'Present'),
(54, 11, '2026-11-04', 'Present'),
(55, 11, '2026-11-05', 'Present'),

(56, 12, '2026-11-01', 'Present'),
(57, 12, '2026-11-02', 'Present'),
(58, 12, '2026-11-03', 'Present'),
(59, 12, '2026-11-04', 'Present'),
(60, 12, '2026-11-05', 'Present'),

(61, 13, '2026-11-01', 'Absent'),
(62, 13, '2026-11-02', 'Present'),
(63, 13, '2026-11-03', 'Present'),
(64, 13, '2026-11-04', 'Leave'),
(65, 13, '2026-11-05', 'Present'),

(66, 14, '2026-11-01', 'Present'),
(67, 14, '2026-11-02', 'Present'),
(68, 14, '2026-11-03', 'Present'),
(69, 14, '2026-11-04', 'Absent'),
(70, 14, '2026-11-05', 'Present');

INSERT INTO performance
(performance_id, employee_id, performance_rating, review_year)
VALUES
(1, 1, 4, 2025),
(2, 2, 5, 2025),
(3, 3, 3, 2025),
(4, 4, 5, 2025),
(5, 5, 4, 2025),
(6, 6, 3, 2025),
(7, 7, 5, 2025),
(8, 8, 4, 2025),
(9, 9, 2, 2025),
(10, 10, 3, 2025),
(11, 11, 5, 2025),
(12, 12, 4, 2025),
(13, 13, 3, 2025),
(14, 14, 2, 2025);

SELECT * FROM departments;

SELECT * FROM employees;

SELECT * FROM attendance;

SELECT * FROM performance;

QN.1: Find the total number of employees.

SELECT COUNT(*) AS Total_employees
FROM employees;


QN.2: Calculate the average employee salary.

SELECT AVG(employees.salary) AS Average_salary
FROM employees;


QN.3: Find the highest and lowest salaries.

SELECT 
   MIN(employees.salary) AS lowest_salary,
   MAX(employees.salary) AS highest_salary
FROM employees;


QN.4: Count employees in each department.

SELECT
    department_id,
	COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;


QN.5: Display all employees who earn more than ₹50,000.

SELECT * 
FROM employees
WHERE salary > 50000;


QN.6: Find the total salary expenditure for each department.

SELECT department_id, SUM(salary) 
FROM employees
GROUP BY department_id;


QN.7: Identify the department with the highest average salary.

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
ORDER BY average_salary DESC
LIMIT 1;

QN.8: Find the department with the highest number of employees.

SELECT
    department_id,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
ORDER BY total_employees DESC
LIMIT 1;



QN.9: Display employee names along with their department names.

SELECT
    e.employee_name,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

QN.10: Find departments that have more than 10 employees.

SELECT
    department_id,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 3;


QN.11: Find the top 5 highest-paid employees.

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;


QN.12: Identify employees who have worked for more than five years.

SELECT *
FROM employees
WHERE joining_date < CURRENT_DATE - INTERVAL '5 years';

QN.13: Calculate the number of male and female employees.

SELECT
    gender,
    COUNT(*) AS total_employees
FROM employees
GROUP BY gender;


QN.14: Find employees who joined in a particular year.

SELECT *
FROM employees
WHERE EXTRACT(YEAR FROM joining_date) = 2022;


QN.15: Identify employees whose salary is above the company average.

SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


QN.16: Calculate employee turnover rate.

SELECT
    COUNT(exit_date) AS employees_left,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(exit_date) * 100.0 / COUNT(*),
        2
    ) AS turnover_rate
FROM employees;

QN.17: Find the department with the highest employee turnover.

SELECT
    d.department_name,
    COUNT(e.employee_id) AS employees_left
FROM employees e
JOIN departments d
ON e.department_id = d.department_id
WHERE e.exit_date IS NOT NULL
GROUP BY d.department_name
ORDER BY employees_left DESC
LIMIT 1;


QN.18: Classify employees into High, Medium and Low salary categories using CASE WHEN.

SELECT
    employee_name,
    salary,
    CASE
        WHEN salary >= 60000 THEN 'High'
        WHEN salary >= 30000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees;


QN.19: Find the average performance rating for each department.

SELECT
    department_id,
    AVG(performance_rating) AS average_rating
FROM employees e
JOIN performance p
ON e.employee_id = p.employee_id
GROUP BY department_id;


QN.20: Identify employees with perfect attendance.

SELECT
    e.employee_id,
    e.employee_name
FROM employees e
JOIN attendance a
ON e.employee_id = a.employee_id
GROUP BY e.employee_id, e.employee_name
HAVING COUNT(*) = COUNT(
    CASE
        WHEN a.status = 'Present' THEN 1
    END
ORDER BY e.employee_id DESC
);

VIEW 1 - EMPLOYEE DEPARTMENT VIEW

CREATE VIEW employee_department_view AS
SELECT
    e.employee_id,
    e.employee_name,
	d.department_id,
    d.department_name,
    e.salary,
    e.hire_date
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

SELECT *
FROM employee_department_view;


VIEW 2 - DEPARTMENT SALARY VIEW

CREATE VIEW department_salary_view AS
SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employees,
    AVG(e.salary) AS average_salary,
    SUM(e.salary) AS total_salary
FROM departments d
INNER JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;

SELECT *
FROM department_salary_view;


