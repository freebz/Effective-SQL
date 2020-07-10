-- 코드 6-12 네 가지 제품을 모두 구매한 고객 찾기

SELECT c.CustomerID, c.CustFirstName, c.CustLastName
FROM Customers AS c
  INNER JOIN (
  SELECT DISTINCT Orders.CustomerID
  FROM Orders
    INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products
      ON Products.ProductNumber = Order_Details.ProductNumber
  WHERE Products.ProductName = 'Skateboard'
  ) AS OSk
    ON c.CustomerID = OSk.CustomerID
  INNER JOIN (
  SELECT DISTINCT Orders.CustomerID
  FROM Orders
    INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products
      ON Products.ProductNumber = Order_Details.ProductNumber
  WHERE Products.ProductName = 'Helmet'
  ) AS OHel
    ON c.CustomerID = OHel.CustomerID
  INNER JOIN (
  SELECT DISTINCT Orders.CustomerID
  FROM Orders
    INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products
      ON Products.ProductNumber = Order_Details.ProductNumber
  WHERE Products.ProductName = 'Knee Pads'
  ) AS OKn
  ON c.CustomerID = OKn.CustomerID
  INNER JOIN (
  SELECT DISTINCT Orders.CustomerID
  FROM Orders
    INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products
      ON Products.ProductNumber = Order_Details.ProductNumber
  WHERE Products.ProductName = 'Gloves'
  ) AS OGl
  ON c.CustomerID = OGl.CustomerID;
