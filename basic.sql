CREATE DATABASE DemoBasic;

use DemoBasic;

CREATE TABLE Customer (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(255),
    Phone VARCHAR(15),
    Address VARCHAR(255)
);

INSERT INTO Customer (CustomerName, Phone, Address)
VALUES
    ('Ananya', '1234567899', 'Hyderabad'),
    ('Suhas', '9876543211', 'warangal');


ALTER TABLE Customer
ADD Country VARCHAR(50), Salary DECIMAL(10, 2), Pincode VARCHAR(10);

UPDATE Customer
SET Country = 'India', Salary = 50000, Pincode = '12345'
WHERE CustomerName = 'Ananya';

select * from Customer;

UPDATE Customer
SET Phone = '3456912368'
WHERE CustomerName = 'Suhas';

SELECT Country, COUNT(*) AS NumberOfCustomers
FROM Customer
GROUP BY Country;

SELECT 
    MAX(Salary) AS MaxSalary,
    MIN(Salary) AS MinSalary,
    SUM(Salary) AS TotalSalary,
    AVG(Salary) AS AvgSalary
FROM Customer;


CREATE TABLE OrderTable (
    OrderId INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Quantity INT,
    Rating INT
);

select * from Customer;

select * from OrderTable;

