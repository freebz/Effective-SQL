-- 코드 5-12 코드 5-10 쿼리를 수정한 버전

SELECT c.CustomerID, c.CustFirstName, c.CustLastName,
  c.CustState, o.LastOrderDate, o.OrderCount, o.TotalAmount
FROM Customers AS c
  LEFT JOIN (
    SELECT t.CustomerID, MAX(t.OrderDate) AS LastOrderDate,
      COUNT(t.OrderNumber) AS OrderCount,
      SUM(t.OrderTotal) AS TotalAmount
    FROM Orders AS t
    GROUP BY t.CustomerID
    ) AS o
    ON c.CustomerID = o.CustomerID;
