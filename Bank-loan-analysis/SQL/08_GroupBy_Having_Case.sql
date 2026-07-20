SELECT State,
       COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY State;

SELECT LoanType,
       SUM(LoanAmount) AS TotalLoan
FROM Loans
GROUP BY LoanType;

SELECT LoanType,
       AVG(LoanAmount) AS AverageLoan
FROM Loans
GROUP BY LoanType;

SELECT LoanType,
       MAX(LoanAmount) AS HighestLoan
FROM Loans
GROUP BY LoanType;

SELECT LoanStatus,
       COUNT(*) AS TotalLoans
FROM Loans
GROUP BY LoanStatus;

SELECT State,
       COUNT(*) AS TotalCustomers
FROM Customers
GROUP BY State
HAVING COUNT(*) > 1;

SELECT LoanType,
       SUM(LoanAmount) AS TotalLoan
FROM Loans
GROUP BY LoanType
HAVING SUM(LoanAmount) > 400000;

SELECT c.CustomerName,
       COUNT(l.LoanID) AS NumberOfLoans
FROM Customers c
INNER JOIN Loans l
ON c.CustomerID=l.CustomerID
GROUP BY c.CustomerName
HAVING COUNT(l.LoanID) > 1;

SELECT CustomerName,
       Income,

CASE

WHEN Income < 500000
THEN 'Low Income'

WHEN Income BETWEEN 500000 AND 700000
THEN 'Medium Income'

ELSE 'High Income'

END AS IncomeCategory

FROM Customers;

SELECT CustomerName,
       CreditScore,

CASE

WHEN CreditScore >= 800
THEN 'Excellent'

WHEN CreditScore >= 750
THEN 'Good'

WHEN CreditScore >= 650
THEN 'Average'

ELSE 'Poor'

END AS CreditCategory

FROM Customers;


SELECT LoanID,
       LoanAmount,

CASE

WHEN LoanAmount > 700000
THEN 'High Risk'

WHEN LoanAmount > 400000
THEN 'Medium Risk'

ELSE 'Low Risk'

END AS RiskLevel

FROM Loans;


SELECT PaymentID,
       AmountPaid,

CASE

WHEN PaymentStatus='Paid'
THEN 'Completed'

WHEN PaymentStatus='Pending'
THEN 'Waiting'

ELSE 'Unknown'

END AS PaymentReport

FROM Payments;

SELECT

c.CustomerName,

c.State,

COUNT(l.LoanID) AS NumberOfLoans,

SUM(l.LoanAmount) AS TotalLoan,

AVG(l.InterestRate) AS AverageInterest

FROM Customers c

INNER JOIN Loans l

ON c.CustomerID=l.CustomerID

GROUP BY c.CustomerName,c.State;

SELECT State,
       AVG(Income)
FROM Customers
GROUP BY State;

SELECT State,
       AVG(Income) AS AvgIncome
FROM Customers
GROUP BY State
HAVING AVG(Income) > 500000;