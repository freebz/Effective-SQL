-- 코드 7-2 DB2에서 실행 계획 생성

EXPLAIN PLAN FOR SELECT CustomerID, SUM(OrderTotal)
FROM Orders
GROUP BY CustomerID;
