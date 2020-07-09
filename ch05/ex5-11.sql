-- 코드 5-11 현재 SQL 표준을 따르도록 코드 5-10 쿼리를 수정한 버전

SELECT c.CustomerID, c.CustFirstName,
  c.CustLastName, c.CustState,
  MAX(o.OrderDate) AS LastOrderDate,
  COUNT(o.OrderNumber) AS OrderCount,
  SUM(o.OrderTotal) AS TotalAmount
FROM Customers AS c
  LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;
