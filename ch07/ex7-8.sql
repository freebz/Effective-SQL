-- 코드 7-8 오라클에서 실행 계획 생성

EXPLAIN PLAN SELECT CustomerID, SUM(OrderTotal)
FROM Orders
GROUP BY CustomerID;
