-- 코드 3-4 뷰를 결합한 문장

SELECT c.CustomerID, c.CustFirstName, c.CustLastName,
  s.LastOrderDate, s.GrandOrderTotal
FROM Customers AS c
  INNER JOIN
    (SELECT o.CustomerID,
        SUM(o.OrderTotal) AS GrandOrderTotal,
	MAX(o.OrderDate) AS LastOrderDate
     FROM Orders AS o
     GROUP BY o.CustomerID) AS s
    ON c.CustomerID = s.CustomerID
WHERE EXISTS
  (SELECT NULL
   FROM Orders AS o
   WHERE o.CustomerID = c.CustomerID
     AND o.OrderDate > DATEADD(MONTH, -6, GETDATE()));
