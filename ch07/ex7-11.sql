-- 코드 7-11 PostgreSQL에서 SQL 문의 바인딩 변수 준비 작업

SET search_path = SalesOrderSample;

PREPARE stmt (int) AS
SELECT * FROM Customers AS c
WHERE c.CustomerID = $1;
