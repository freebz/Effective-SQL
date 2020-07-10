-- 코드 6-2 EXISTS 조건과 함께 테이블을 서브쿼리를 사용한 쿼리

SELECT Customers.CustomerID, Customers.CustFirstName,
  Customers.CustLastName, Orders.OrderNumber, Orders.OrderDate
FROM Customers
  INNER JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
WHERE EXISTS (
  SELECT NULL
  FROM Orders AS o2
    INNER JOIN Order_Details
      ON o2.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products
      ON Products.ProductNumber = Order_Details.ProductNumber
  WHERE Products.ProductName = 'Skateboard'
    AND o2.OrderNumber = Orders.OrderNumber
  ) AND EXISTS (
  SELECT NULL
  FROM Orders AS o3
    INNER JOIN Order_Details
      ON o3.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products
      ON Products.ProductNumber = Order_Details.ProductNumber
  WHERE Products.ProductName = 'Helmet'
    AND o3.OrderNumber = Orders.OrderNumber
  );
