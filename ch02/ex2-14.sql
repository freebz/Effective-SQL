-- 코드 2-14 고객별 전체 주문 금액을 구하는 쿼리

SELECT CustomerID, Sum(OrderTotal) AS SumOrderTotal
FROM Orders
GROUP BY CustomerID;
