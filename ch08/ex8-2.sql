-- 코드 8-2 판매된 모든 제품 목록

SELECT o.OrderNumber, o.CustomerID, od.ProductNumber
FROM Orders AS o
  INNER JOIN Order_Details AS od
    ON o.OrderNumber = od.OrderNumber;
