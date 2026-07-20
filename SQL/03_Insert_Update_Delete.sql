SELECT * FROM Customers;
INSERT INTO Customers
VALUES
(1,'Rahul Sharma',25,'Male','Telangana',450000,'Software Engineer',780);
INSERT INTO Customers
VALUES

(2,'Priya Reddy',29,'Female','Andhra Pradesh',600000,'Teacher',750),

(3,'Arjun Kumar',35,'Male','Karnataka',850000,'Doctor',810),

(4,'Sneha Patel',31,'Female','Maharashtra',700000,'Business',720),

(5,'Vikram Singh',40,'Male','Delhi',950000,'Manager',790);
SELECT * FROM Customers;
SELECT CustomerName
FROM Customers;
SELECT CustomerName,
Income
FROM Customers;
SELECT CustomerName AS Customer,
Income AS Salary
FROM Customers;
UPDATE Customers
SET Income = 500000
WHERE CustomerID = 1;

DELETE FROM Customers
WHERE CustomerID = 5;