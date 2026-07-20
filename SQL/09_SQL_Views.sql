USE BankLoanDB;
CREATE VIEW CustomerLoanView AS

SELECT

c.CustomerID,

c.CustomerName,

c.State,

l.LoanID,

l.LoanType,

l.LoanAmount,

l.InterestRate,

l.LoanStatus

FROM Customers c

INNER JOIN Loans l

ON c.CustomerID = l.CustomerID;


SHOW FULL TABLES
WHERE TABLE_TYPE='VIEW';

SELECT *
FROM CustomerLoanView;


CREATE VIEW CustomerPaymentView AS

SELECT

c.CustomerName,

l.LoanType,

p.PaymentDate,

p.AmountPaid,

p.PaymentStatus

FROM Customers c

INNER JOIN Loans l

ON c.CustomerID=l.CustomerID

INNER JOIN Payments p

ON l.LoanID=p.LoanID;


SELECT *
FROM CustomerPaymentView;


CREATE VIEW CustomerSummaryView AS

SELECT

c.CustomerName,

COUNT(l.LoanID) AS TotalLoans,

SUM(l.LoanAmount) AS TotalLoanAmount,

AVG(l.InterestRate) AS AverageInterest

FROM Customers c

INNER JOIN Loans l

ON c.CustomerID=l.CustomerID

GROUP BY c.CustomerName;


SELECT *
FROM CustomerSummaryView;

CREATE OR REPLACE VIEW CustomerLoanView AS

SELECT

c.CustomerID,

c.CustomerName,

c.State,

c.Income,

l.LoanType,

l.LoanAmount,

l.InterestRate,

l.LoanStatus

FROM Customers c

INNER JOIN Loans l

ON c.CustomerID=l.CustomerID;

SELECT *
FROM CustomerLoanView;

SHOW FULL TABLES
WHERE TABLE_TYPE='VIEW';