-- 코드 3-3 세 가지 뷰 생성

CREATE VIEW vActiveCustomers AS
SELECT c.CustomerID, c.CustFirstname, c.CustLastname,
  c.CustFirstName + ' ' + c.CustLastName AS CustFullName
FROM Customers As c
WHERE EXISTS
  (SELECT NULL
   FROM Orders AS o
   WHERE o.CustomerID = c.CustomerID
     AND o.OrderDate > DATEADD(MONTH, -6, GETDATE()));

CREATE VIEW vCustomerStatistics AS
SELECT o.CustomerID, COUNT(o.OrderNumber) AS OrderCount,
  SUM(o.OrderTotal) AS GrandOrderTotal,
  MAX(o.OrderDate) AS LastOrderDate
FROM Orders AS o
GROUP BY o.CustomerID;

CREATE VIEW vActiveCustomerStatistics AS
SELECT a.CustomerID, a.CustFirstName, a.CustLastName,
  s.LastOrderDate, s.GrandOrderTotal
FROM vActiveCustomers As a
  INNER JOIN vCustomerStatistics AS s
    ON a.CustoemrID = s.CustomerID;
