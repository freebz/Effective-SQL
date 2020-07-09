-- 코드 5-9 그림 5-2의 쿼리를 SQL로 변환

SELECT o.ShipDate, Sum(o.OrderTotal) AS SumOfOrderTotal
FROM Orders AS o
WHERE o.ShipDate >= #9/1/2015#
  AND o.ShipDate < #10/1/2015#
GROUP BY o.ShipDate;
