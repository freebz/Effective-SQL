-- 코드 8-4 모든 고객과 제품을 보여 주고, 각 고객이 구매한 제품에 표시를 남기는 또 다른 쿼리

SELECT c.CustomerID, c.CustFirstName, c.CustLastName,
  p.ProductNumber, p.ProductName,
  (CASE WHEN c.CustomerID IN
    (SELECT Orders.CustomerID
     FROM Orders
       INNER JOIN Order_Details
         ON Orders.OrderNumber = Order_Details.OrderNumber
     WHERE Order_Details.ProductNumber = p.ProductNumber)
     THEN 'You purchased this!'
     ELSE ' '
   END) AS ProductOrdered
FROM Customers AS c, Products AS p
ORDER BY c.CustomerID, p.ProductName;
