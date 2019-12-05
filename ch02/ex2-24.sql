-- 코드 2-24 정렬 연산이 필요한 쿼리

SELECT ProductNumber, ProductName
FROM Products
WHERE CategoryID IN (1, 5, 9)
ORDER BY ProductName;
