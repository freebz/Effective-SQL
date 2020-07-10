-- 코드 6-3 단일 컬럼 테이블 서브쿼리로 2015년 12월에 주문하지 않은 제품 찾기

SELECT Products.ProductName
FROM Products
WHERE Products.ProductNumber NOT IN (
  SELECT Order_Details.ProductNumber
  FROM Orders
    INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
  WHERE Orders.OrderDate
    BETWEEN '2015-12-01' AND '2015-12-31'
  );
