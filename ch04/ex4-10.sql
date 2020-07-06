-- 코드 4-10 스케이트보드는 구매했지만 헬멧은 구매하지 않은 고객 찾기

SELECT CustomerID, CustFirstName, CustLastName
FROM Customers
WHERE (1 =
  (CASE WHEN CustomerID NOT IN
    (SELECT Orders.CustomerID
     FROM Orders
       INNER JOIN Order_Details
         ON Orders.OrderNumber = Order_Details.OrderNumber
       INNER JOIN Products
         ON Order_Details.ProductNumber
	     = Products.ProductNumber
     WHERE Products.ProductNumber = 'Skateboard')
    THEN 0
  WHEN CustoerID IN
    (SELECT Orders.CustoerID
     FROM Orders
       INNER JOIN Order_Details
         ON Orders.OrderNumber = Order_Details.OrderNumber
       INNER JOIN Products
         ON Order_Details.ProductNumber
	     = Products.ProductNumber
     WHERE Products.ProductName = 'Helmet')
    THEN 0
    ELSE 1 END));
