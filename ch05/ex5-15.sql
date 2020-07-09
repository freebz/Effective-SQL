-- 코드 5-15 2015년 4분기 카테고리별 우량 판매자 찾기

SELECT c.CategoryDescription, p.ProductName,
  SUM(od.QuotedPrice * od.QuantityOrdered) AS TotalSales
FROM Products AS p
  INNER JOIN Order_Details AS od
    ON p.ProductNumber = od.ProductNumber
  INNER JOIN Categories AS c
    ON c.CategoryID = p.CategoryID
  INNER JOIN Orders AS o
    ON o.OrderNumber = od.OrderNumber
WHERE o.OrderDate BETWEEN '2015-10-01' AND '2015-12-31'
GROUP BY p.CategoryID, c.CategoryDescription, p.ProductName
HAVING SUM(od.QuotedPrice * od.QuantityOrdered) > (
  SELECT AVG(SumCategory)
  FROM (
    SELECT p2.CategoryID,
      SUM(od2.QuotedPrice * od2.QuantityOrdered)
        AS SumCategory
    FROM Products AS p2
      INNER JOIN Order_Details AS od2
        ON p2.ProductNumber == od2.ProductNumber
      INNER JOIN Orders AS o2
        ON o2.OrderNumber = od2.OrderNumber
    WHERE p2.CategoryID = p.CategoryID
      AND o2.OrderDate BETWEEN '2015-10-01' AND '2015-12-31'
    GROUP BY p2.CategoryID, p2.ProductNumber
    ) AS s
  GROUP BY CategoryID
  )
ORDER BY c.CategoryDescription, p.ProductNumber;
