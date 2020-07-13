-- 코드 8-5 액세서리에 속한 제품별 총 판매액 계산

SELECT od.ProductNumber,
  SUM(od.QuantityOrdered * od.QuotedPrice) AS ProductSales
FROM Order_Details AS od
WHERE od.ProductNumber IN (
  SELECT p.ProductNumber
  FROM Products AS p
    INNER JOIN Categories AS c
      ON p.CategoryID = c.CategoryID
  WHERE c.CategoryDescription = 'Accessories'
  )
GROUP BY od.ProductNumber;
