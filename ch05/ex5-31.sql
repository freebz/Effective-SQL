-- 코드 5-31 ROW_NUMBER()와 RANK() 함수를 사용한 쿼리

SELECT
  ROW_NUMBER() OVER (
    ORDER BY o.OrderDate, o.OrderNumber
    ) AS OrderSequence,
  ROW_NUMBER() OVER (
    PARTITION BY o.CustomerID
    ORDER BY o.OrderDate, o.OrderNumber
    ) AS CustomerOrderSequence,
  o.OrderNumber, o.CustomerID, o.OrderDate, o.OrderTotal,
  RANK() OVER (
    ORDER BY o.OrderTotal DESC
    ) AS OrderRanking,
  RANK() OVER (
    PARTITION BY o.CustomerID
    ORDER BY o.OrderTotal DESC
    ) AS CustomerOrderRanking
FROM Orders AS o
ORDER BY o.OrderDate;
