USE BankLoanDB;
CREATE TABLE Payments (

    PaymentID INT AUTO_INCREMENT PRIMARY KEY,

    LoanID INT NOT NULL,

    PaymentDate DATE NOT NULL,

    AmountPaid DECIMAL(12,2) NOT NULL,

    PaymentMode VARCHAR(30) NOT NULL,

    PaymentStatus VARCHAR(20) NOT NULL,

    FOREIGN KEY (LoanID)
    REFERENCES Loans(LoanID)

);
SHOW TABLES;

INSERT INTO Payments
(LoanID,PaymentDate,AmountPaid,PaymentMode,PaymentStatus)

VALUES

(1,'2026-02-15',15000,'UPI','Paid'),

(1,'2026-03-15',15000,'UPI','Paid'),

(2,'2026-03-20',12000,'NEFT','Paid'),

(3,'2026-04-10',18000,'Debit Card','Pending'),

(4,'2026-05-18',10000,'Cash','Paid'),

(5,'2026-06-25',20000,'UPI','Paid');

SELECT *
FROM Payments;

SELECT COUNT(*) FROM Customers;

SELECT COUNT(*) FROM Customers;

SELECT COUNT(*) FROM Payments;