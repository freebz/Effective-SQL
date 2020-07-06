-- 코드 4-12 복합 조건을 처리하는 올바른 쿼리

SELECT c.CustomerID, c.CustFirstName, c.CustLastName
FROM Customers AS c
  INNER JOIN
    (SELECT DISTINCT o.CustomerID
     FROM Orders AS o
       INNER JOIN Order_Details AS od
         ON o.OrderNumber = od.OrderNumber
       INNER JOIN Products AS p
         ON p.ProductNumber = od.ProductNumber
     WHERE p.ProductName = 'Skateboard') AS OSk
    ON c.CustomerID = OSk.CustomerID
  INNER JOIN
    (SELECT DISTINCT o.CustomerID
     FROM Orders AS o
       INNER JOIN Order_Details AS od
         ON o.OrderNumber = od.OrderNumber
       INNER JOIN Products AS p
         ON p.ProductNumber = od.ProductNumber
     WHERE p.ProductName = 'Helmet') AS OHel
    ON c.CustomerID = OHel.CustomerID
  INNER JOIN
    (SELECT DISTINCT o.CustomerID
     FROM Orders AS o
       INNER JOIN Order_Details AS od
         ON o.OrderNumber = od.OrderNumber
       INNER JOIN Products AS p
         ON p.ProductNumber = od.ProductNumber
     WHERE p.ProductName = 'Knee Pads') AS OKn
    ON c.CustomerID = OKn.CustomerID
  INNER JOIN
    (SELECT DISTINCT o.CustomerID
     FROM Orders AS o
       INNER JOIN Order_Details AS od
         ON o.OrderNumber = od.OrderNumber
       INNER JOIN Products AS p
         ON p.ProductNumber = od.ProductNumber
     WHERE p.ProductName = 'Gloves') AS OGl
    ON c.CustomerID = OGl.CustomerID;
