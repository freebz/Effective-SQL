-- 코드 4-2 INNER JOIN으로 교집합 연산과 동일한 기능 구현

SELECT c.CustFirstName, c.CustLastName
FROM 
  (SELECT DISTINCT c.CustFirstName,
     c.CustLastName
   FROM Customers AS c
     INNER JOIN Order AS o
       ON c.CustomerID = o.CustomerID
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON p.ProductNumber = od.ProductNumber
   WHERE p.ProductName = 'Bike') AS c
INNER JOIN
  (SELECT DISTINCT c.CustFirstName,
    c.CustLastName
   FROM Customers AS c
     INNER JOIN Orders AS o
       ON c.CustomerID = o.CustomerID
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON p.ProductNumber = od.ProductNumber
   WHERE p.ProductName = 'Skateboard'
  ) AS c2
   ON c.CustFirstName = c2.CustFirstName
     AND c.CustLastName = c2.CustLastName;
