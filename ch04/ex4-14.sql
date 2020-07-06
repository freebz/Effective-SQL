-- 코드 4-14 EXISTS를 사용한 복합 조인 문제 처리

SELECT c.CustomerID, c.CustFirstName, c.CustLastName
FROM Customers AS c
WHERE EXISTS
  (SELECT o.CustomerID
   FROM Orders AS o
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON p.ProductNumber = od.ProductNumber
   WHERE p.ProductName = 'Skateboard'
     AND o.CustomerID = C.CustomerID)
  AND EXISTS ...
