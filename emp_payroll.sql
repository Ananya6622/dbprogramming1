CREATE DATABASE payroll_service;
SELECT name FROM sys.databases;
USE payroll_service;

CREATE TABLE employee_payroll
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(255),
    salary DECIMAL(10, 2),
    start_date DATE
);

INSERT INTO employee_payroll (name, salary, start_date)
VALUES
    ('Chandler Bing', 50000.00, '2018-01-15'),
    ('Joy Tribiani', 60000.00, '2021-02-20'),
    ('Ross Geller', 55000.00, '2023-03-10');

SELECT * FROM employee_payroll;

SELECT salary FROM employee_payroll
WHERE name = 'Ross Geller';

SELECT * FROM employee_payroll
WHERE start_date BETWEEN CAST('2018-01-01' AS DATE) AND CAST(GETDATE() AS DATE);

ALTER TABLE employee_payroll
ADD gender NVARCHAR(10);

UPDATE employee_payroll
SET gender = 'Male'
WHERE name IN ('Joy Tribiani', 'Ross Geller');

SELECT gender, SUM(salary) AS total_salary
FROM employee_payroll
GROUP BY gender;

SELECT gender, AVG(salary) AS avg_salary
FROM employee_payroll
GROUP BY gender;

SELECT gender, MIN(salary) AS min_salary
FROM employee_payroll
GROUP BY gender;

SELECT gender, MAX(salary) AS max_salary
FROM employee_payroll
GROUP BY gender;

SELECT gender, COUNT(*) AS employee_count
FROM employee_payroll
GROUP BY gender;

ALTER TABLE employee_payroll
ADD phone NVARCHAR(15),
    address NVARCHAR(255) DEFAULT 'Not Provided',
    department NVARCHAR(50) ;

ALTER TABLE employee_payroll
ADD basic_pay DECIMAL(10, 2),
    deductions DECIMAL(10, 2),
    taxable_pay DECIMAL(10, 2),
    income_tax DECIMAL(10, 2),
    net_pay DECIMAL(10, 2);

