-- 코드 8-6 5분위 계산과 총 판매액으로 매긴 액세서리 제품 순위

WITH ProdSale AS (
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
  GROUP BY od.ProductNumber
),
RankedCategories AS (
  SELECT Categories.CategoryDescription, Products.ProductName,
    ProdSale.ProductSales,
    RANK() OVER (
      ORDER BY ProdSale.ProductSales DESC
    ) AS RankInCategory
  FROM Categories
    INNER JOIN Products
      ON Categories.CategoryID = Products.CategoryID
    INNER JOIN ProdSale
      ON ProdSale.ProductNumber = Products.ProductNumber
),
ProdCount AS (
  SELECT COUNT(ProductNumber) AS NumProducts
  FROM ProdSale
)
SELECT p1.CategoryDescription, p1.ProductName,
  p1.ProductSales, p1.RankInCategory,
  CASE
    WHEN RankInCategory <= ROUND(0.2 * NumProducts, 0)
      THEN 'First'
    WHEN RankInCategory <= ROUND(0.4 * NumProducts, 0)
      THEN 'Second'
    WHEN RankInCategory <= ROUND(0.6 * NumProducts, 0)
      THEN 'Third'
    WHEN RankInCategory <= ROUND(0.8 * NumProducts, 0)
      THEN 'Fourth'
    ELSE 'Fifth'
  END AS Quintile
FROM RankedCategories AS p1
  CROSS JOIN ProdCount
ORDER BY p1.ProductSales DESC;
