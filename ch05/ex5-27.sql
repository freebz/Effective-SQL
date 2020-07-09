-- 코드 5-27 1,000.00달러를 초과하는 주문의 개수를 구하는 쿼리

SELECT COUNT(*) AS TotalOrders
FROM OrdersTable
WHERE OrderTotal > 1000;
