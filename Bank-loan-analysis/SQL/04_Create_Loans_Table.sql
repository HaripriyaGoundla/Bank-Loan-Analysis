USE BankLoanDB;
CREATE TABLE Loans (

    LoanID INT PRIMARY KEY,

    CustomerID INT,

    LoanAmount DECIMAL(12,2),

    LoanType VARCHAR(50),

    InterestRate DECIMAL(5,2),

    LoanDate DATE,

    LoanStatus VARCHAR(20),

    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
    SHOW TABLES;
    DESCRIBE Loans;
    
    INSERT INTO Loans
VALUES

(101,1,500000,'Home Loan',8.50,'2026-01-10','Approved'),

(102,2,300000,'Car Loan',9.25,'2026-02-18','Approved'),

(103,3,800000,'Business Loan',11.50,'2026-03-05','Pending'),

(104,4,200000,'Education Loan',7.80,'2026-04-15','Approved');
SELECT * FROM Loans;

INSERT INTO Loans
VALUES
(105,100,400000,'Car Loan',9.5,'2026-05-20','Approved'); invalid (to known)

INSERT INTO Loans
VALUES
(105,1,400000,'Personal Loan',10.20,'2026-05-20','Approved'); valid


);