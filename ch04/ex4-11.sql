-- 코드 4-11 잘못된 방식으로 작성된 쿼리

SELECT c.CustomerID, c.CustFirstName, c.CustLastName
FROM Customers AS c
WHERE c.CustomerID IN
  (SELECT o.CustomerID
   FROM Orders AS o
     INNER JOIN Order_Details AS od
       ON o.OrderNumber = od.OrderNumber
     INNER JOIN Products AS p
       ON p.ProductNumber = od.ProductNumber
   WHERE p.ProductName
     IN ('Skateboard', 'Helmet', 'Knee Pads', 'Gloves'));
