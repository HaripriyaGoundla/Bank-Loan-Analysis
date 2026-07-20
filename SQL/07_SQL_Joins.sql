SELECT columns
FROM Table1
INNER JOIN Table2
ON Table1.column = Table2.column;

USE BankLoanDB;
SELECT Customers.CustomerName,
       Loans.LoanAmount
FROM Customers
INNER JOIN Loans
ON Customers.CustomerID = Loans.CustomerID;

SELECT c.CustomerName,
       l.LoanAmount
FROM Customers c
INNER JOIN Loans l
ON c.CustomerID = l.CustomerID;

SELECT c.CustomerName,
       l.LoanType,
       l.LoanAmount
FROM Customers c
INNER JOIN Loans l
ON c.CustomerID = l.CustomerID;

SELECT

c.CustomerName,

l.LoanType,

l.LoanAmount,

p.AmountPaid

FROM Customers c

INNER JOIN Loans l
ON c.CustomerID = l.CustomerID

INNER JOIN Payments p
ON l.LoanID = p.LoanID;

SELECT

c.CustomerName,

l.LoanAmount

FROM Customers c

LEFT JOIN Loans l

ON c.CustomerID=l.CustomerID;

SELECT

c.CustomerName

FROM Customers c

LEFT JOIN Loans l

ON c.CustomerID=l.CustomerID

WHERE l.CustomerID IS NULL;

SELECT

c.CustomerName,

SUM(l.LoanAmount) AS TotalLoan

FROM Customers c

INNER JOIN Loans l

ON c.CustomerID=l.CustomerID

GROUP BY c.CustomerName;

SELECT

c.CustomerName,

COUNT(l.LoanID) AS NumberOfLoans

FROM Customers c

INNER JOIN Loans l

ON c.CustomerID=l.CustomerID

GROUP BY c.CustomerName;

SELECT

c.CustomerName,

SUM(p.AmountPaid) AS TotalPayment

FROM Customers c

INNER JOIN Loans l
ON c.CustomerID=l.CustomerID

INNER JOIN Payments p
ON l.LoanID=p.LoanID

GROUP BY c.CustomerName;

SELECT

c.CustomerName,

l.LoanType,

p.PaymentStatus

FROM Customers c

INNER JOIN Loans l
ON c.CustomerID=l.CustomerID

INNER JOIN Payments p
ON l.LoanID=p.LoanID

WHERE p.PaymentStatus='Pending';


SELECT

c.CustomerName,

c.State,

l.LoanType,

l.LoanAmount,

l.InterestRate,

l.LoanStatus,

p.AmountPaid,

p.PaymentMode,

p.PaymentStatus

FROM Customers c

INNER JOIN Loans l
ON c.CustomerID=l.CustomerID

INNER JOIN Payments p
ON l.LoanID=p.LoanID;