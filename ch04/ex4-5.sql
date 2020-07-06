-- 코드 4-5 EXISTS 연산자 사용

SELECT p.ProductNumber, p.ProductName
FROM Products AS p
WHERE NOT EXISTS
  (SELECT *
   FROM Order_Details AS od
   WHERE od.ProductNumber = p.ProductNumber);
