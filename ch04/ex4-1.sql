-- 코드 4-1 교집합 연산을 수행하는 쿼리

SELECT c.CustFirstname, c.CustLastName
FROM Customers AS c
WHERE c.CustomerID IN
  (SELECT o.CustomerID
   FROM Orders AS o
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON p.ProductNumber = od.ProductNumber
   WHERE p.ProductName = 'Bike')
INTERSECT
SELECT c2.CustFirstName, c2.CustLastName
FROM Customers AS c2
WHERE c2.CustomerID IN
  (SELECT o.CustomerID
   FROM Orders AS o
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON p.ProductNumber = od.ProductNumber
   WHERE p.ProductName = 'Skateboard');
