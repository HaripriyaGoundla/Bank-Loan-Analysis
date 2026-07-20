SELECT *
FROM Customers;

SELECT CustomerName
FROM Customers;

SELECT CustomerName,
Income
FROM Customers;

SELECT CustomerName AS Name,
Income AS AnnualIncome
FROM Customers;

SELECT *
FROM Customers
WHERE State='Telangana';

SELECT *
FROM Customers
WHERE Income > 600000;

SELECT CustomerName,
CreditScore
FROM Customers
WHERE CreditScore > 750;

SELECT CustomerName,
Income
FROM Customers
ORDER BY Income DESC;

SELECT CustomerName,
Age
FROM Customers
ORDER BY Age ASC;

SELECT CustomerName,
Income
FROM Customers
ORDER BY Income DESC
LIMIT 3;

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

SELECT SUM(LoanAmount) AS TotalLoanAmount
FROM Loans;

SELECT AVG(LoanAmount) AS AverageLoan
FROM Loans;

SELECT MAX(LoanAmount) AS HighestLoan
FROM Loans;

SELECT MIN(LoanAmount) AS LowestLoan
FROM Loans;

SELECT AVG(Income) AS AverageIncome
FROM Customers;

SELECT COUNT(*) AS ApprovedLoans
FROM Loans
WHERE LoanStatus='Approved';

SELECT SUM(AmountPaid) AS TotalPayments
FROM Payments;

SELECT *
FROM Payments
WHERE PaymentStatus='Pending';

SELECT DISTINCT LoanType
FROM Loans;