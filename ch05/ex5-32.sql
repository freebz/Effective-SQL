-- 코드 5-32 이동 집계를 수행하는 윈도우 함수

SELECT o.OrderNumber, o.CustomerID, o.OrderTotal,
  SUM(o.OrderTotal) OVER(
    PARTITION BY o.CustomerID
    ORDER BY o.OrderNumber, o.CustomerID
    RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) AS TotalByCustomer,
  SUM(o.OrderTotal) OVER (
    PARTITION BY o.CustomerID
    --RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS TotalOverall
FROM Orders AS o
ORDER BY o.OrderID, o.CustomerID;
