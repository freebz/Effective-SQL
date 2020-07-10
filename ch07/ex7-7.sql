-- 코드 7-7 MySQL에서 실행 계획 생성

EXPLAIN SELECT CustomerID, SUM(OrderTotal)
FROM Orders
GROUP BY CustomerID;
