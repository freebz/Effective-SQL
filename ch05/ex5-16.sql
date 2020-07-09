-- 코드 5-16 CTE를 사용해 코드 5-15를 간략하게 만든 쿼리

WITH CatProdData AS (
  SELECT c.CategoryID, c.CategoryDescription,
    p.ProductName, od.QuotedPrice, od.QuantityOrdered
  FROM Products AS p
    INNER JOIN Order_Details AS od
      ON p.ProductNumber = od.ProductNumber
    INNER JOIN Categories AS c
      ON c.CategoryID = p.CategoryID
    INNER JOIN Orders AS o
      ON o.OrderNumber = od.OrderNumber
  WHERE o.OrderDate BETWEEN '2015-10-01' AND '2015-12-31'
  )
SELECT d.CategoryDescription, d.ProductName,
  SUM(od.QuotedPrice * od.QuantityOrdered) AS TotalSales
FROM CatProdData AS d
GROUP BY d.CategoryID, d.CategoryDescription, d.ProductName
HAVING SUM(d.QuotedPrice * d.QuantityOrdered) > (
  SELECT AVG(SumCategory)
  FROM (
    SELECT d2.CategoryID,
      SUM(d2.QuotedPrice * d2.QuantityOrdered)
        AS SumCategory
    FROM CatProdData AS d2
    WHERE d2.CategoryID = d.CategoryID
    GROUP BY d2.CategoryID, d2.ProductNumber
    ) AS s
  GROUP BY CategoryID
  )
ORDER BY d.CategoryDescription, d.ProductNumber;
