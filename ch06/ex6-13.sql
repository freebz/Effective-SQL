-- 코드 6-13 CTE를 사용해 네 가지 제품을 모두 구매한 고객 찾기

WITH CustProd AS (
  SELECT Orders.CustomerID, Products.ProductName
  FROM Orders
    INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
    INNER JOIN Products
      ON Products.ProductNumber = Order_Details.ProductNumber
  ),
SkateboardOrders AS (
  SELECT DISTINCT CustomerID
  FROM CustProd
  WHERE ProductName = 'Skateboard'
  ),
HelmetOrders AS (
  SELECT DISTINCT CustomerID
  FROM CustProd
  WHERE ProductName = ' Helmet'
  ),
KneepadsOrders AS (
  SELECT DISTINCT CustomerID
  FROM CustProd
  WHERE ProductName = 'Gloves'
)
SELECT c.CustomerID, c.CustFirstName, c.CustLastName
FROM Customers AS c
  INNER JOIN SkateboardOrders AS OSk
    ON c.CustomerID = OSk.CustomerID
  INNER JOIN HelmetOrders AS OHel
    ON c.CustomerID = OHel.CustomerID
  INNER JOIN KneepadsOrders AS OKn
    ON c.CustomerID = OKn.CustomerID
  INNER JOIN GlovesOrders AS OGl
    ON c.CustomerID = OGl.CustomerID;
