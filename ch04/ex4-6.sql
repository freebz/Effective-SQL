-- 코드 4-6 좌절성 조인

SELECT p.ProductNumber, p.ProductName
FROM Products AS p LEFT OUTER JOIN Order_Details AS od
  ON p.ProductNumber = od.ProductNumber
WHERE od.ProductNumber IS NULL;
