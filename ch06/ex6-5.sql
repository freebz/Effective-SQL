-- 코드 6-5 SELECT 절에서 스칼라 서브쿼리를 컬럼으로 사용한 쿼리

SELECT Products.ProductNumber, Products.ProductName, (
    SELECT MAX(Orders.OrderDate)
    FROM Orders
      INNER JOIN Order_Details
        ON Orders.OrderNumber = Order_Details.OrderNumber
    WHERE Order_Details.ProductNumber = Products.ProductNumber
    ) AS LastOrder
FROM Products;
