DELIMITER $$

CREATE PROCEDURE GetAllCustomers()

BEGIN

SELECT *
FROM Customers;

END $$

DELIMITER ;

CALL GetAllCustomers();


DELIMITER $$

CREATE PROCEDURE GetApprovedLoans()

BEGIN

SELECT *
FROM Loans
WHERE LoanStatus='Approved';

END $$

DELIMITER ;

CALL GetApprovedLoans();

DELIMITER $$

CREATE PROCEDURE GetHighIncomeCustomers()

BEGIN

SELECT
CustomerName,
Income
FROM Customers
WHERE Income > 500000;

END $$

DELIMITER ;

CALL GetHighIncomeCustomers();

DELIMITER $$

CREATE PROCEDURE GetLoanSummary()

BEGIN

SELECT

LoanType,

SUM(LoanAmount) AS TotalLoan

FROM Loans

GROUP BY LoanType;

END $$

DELIMITER ;

CALL GetLoanSummary();

SHOW PROCEDURE STATUS
WHERE Db='BankLoanDB';