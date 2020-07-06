-- 코드 4-38 모든 고객과 일부 주문을 보여 주는 첫 번째 쿼리

SELECT c.CustomerID, c.CustFirstname, c.CustLastName,
  o.OrderNumber, o.OrderDate, o.OrderTotal
FROM Customers AS c
  LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderDate BETWEEN CAST('2015-10-01' AS DATE)
AND CAST('2015-12-31' AS DATE);
