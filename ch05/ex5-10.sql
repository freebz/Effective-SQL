-- 코드 5-10 SQL-92 표준을 따르는 GROUP BY 절에 컬럼을 여러 개 둔 집계 쿼리

SELECT c.CustomerID, c.CustFirstName,
  c.CustLastName, c.CustState,
  MAX(o.OrderDate) AS LastOrderDate,
  COUNT(o.OrderNumber) AS OrderCount,
  SUM(o.OrderTotal) AS TotalAmount
FROM Customers AS c
  LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustFirstName,
  c.CustLastName, c.CustState;
