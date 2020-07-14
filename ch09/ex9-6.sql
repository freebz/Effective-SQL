-- 코드 9-6 2015년 12월 고객별 총 구매액 계산

WITH CustDecPurch AS (
  SELECT Orders.CustomerID,
    SUM((QuotedPrice)*(QuantityOrdered)) AS Purchase
  FROM Orders
    INNER JOIN Order_Details
      ON Orders.OrderNumber = Order_Details.OrderNumber
  WHERE Orders.OrderDate BETWEEN '2015-12-01'
      AND '2015-12-31'
  GROUP BY Orders.CustomerID
), ...
