-- 코드 4-4 NOT IN을 사용한 쿼리

SELECT p.ProductNumber, p.ProductName
FROM Products AS p
WHERE p.ProductNumber
  NOT IN (SELECT ProductNumber FROM Order_Details);
