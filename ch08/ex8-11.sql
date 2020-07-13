-- 코드 8-11 한 번에 제품을 세 개 고르는 가능한 모든 조합 찾기

SELECT Prod1.ProductNumber AS P1Num,
  Prod1.ProductName AS P1Name, Prod2.ProductNumber AS P2Num,
  Prod2.ProductName AS P2Name, Prod3.ProductNumber AS P3Num,
  Prod3.ProductName AS P3Name
FROM Products AS Prod1 CROSS JOIN Products AS Prod2
  CROSS JOIN Products AS Prod3
WHERE Prod1.ProductNumber < Prod2.ProductNumber
  AND Prod2.ProductNumber < Prod3.ProductNumber;
