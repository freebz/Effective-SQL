-- 코드 4-3 차집합 연산으로 문제를 해결한 쿼리

SELECT c.CustFirstName, c.CustLastName
FROM Customers AS c
WHERE c.CustomerID IN
  (SELECT o.CustomerID
   FROM Orders AS o
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON p.ProductNumber = od.ProductNumber
   WHERE p.ProductName = 'Skateboard')
EXPECT
SELECT c2.CustFirstName, c2.CustLastName
FROM Customers AS c2
  (SELECT o.CustomerID
   FROM Orders AS o
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON p.ProductNumber = od.ProductNumber
   WHERE p.ProductName = 'Helmet');
