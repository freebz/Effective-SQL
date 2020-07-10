-- 코드 7-23 특정 제품의 주문 내역을 찾는 쿼리

SELECT o.OrderNumber, o.CustomerID
FROM Orders AS o
WHERE EmployeeID = ?;
