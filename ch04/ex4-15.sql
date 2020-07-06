-- 코드 4-1 보호 장비를 구매하지 않은 고객 찾기

SELECT c.CustomerID, c.CustFirstName, c.CustLastName
FROM Customers AS c
WHERE c.CustomerID IN
  (SELECT o.CustomerID
   FROM Orders AS o
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON o.ProductNumber = od.ProductNumber
   WHERE p.ProductName = 'Skateboard')
  AND c.CustomerID NOT IN
  (SELECT o.CustomerID
   FROM Orders AS o
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON o.ProductNumber = od.ProductNumber
   WHERE p.ProductName
     IN ('Helmet', 'Gloves', 'Knee Pads'));
