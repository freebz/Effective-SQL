-- 코드 7-10 PostgreSQL에서 실행 계획 생성

EXPLAIN SELECT CustomerID, SUM(OrderTotal)
FROM Orders
GROUP BY CustomerID;
