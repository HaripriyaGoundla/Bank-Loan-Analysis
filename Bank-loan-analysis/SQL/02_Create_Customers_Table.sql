USE BankLoanDB;
CREATE TABLE Customers (

    CustomerID INT PRIMARY KEY,

    CustomerName VARCHAR(100),

    Age INT,

    Gender VARCHAR(10),

    State VARCHAR(50),

    Income DECIMAL(10,2),

    Occupation VARCHAR(50),

    CreditScore INT

);
SHOW TABLES;
DESCRIBE Customers;