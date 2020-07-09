-- 코드 5-8 그림 5-1의 쿼리를 SQL로 변환

SELECT O.ShipDate, Sum(O.OrderTotal) AS SumOfOrderTotal
FROM Orders AS O
GROUP BY O.ShipDate
HAVING (((O.ShipDate) >= #9/1/2015#
  AND (O.ShipDate) < #10/1/2015#));
