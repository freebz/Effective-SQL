-- 코드 3-10 좀 더 다듬은 UNION 쿼리를 사용한 데이터 정규화

SELECT Category, 'Oct' AS SalesMonth, OctQuantity AS Quantity,
  OctSales AS SalesAmt
FROM SalesSummary
UNION
SELECT Category, 'Nov', NovQuantity, NovSales
FROM SalesSummary
UNION
SELECT Category, 'Dec', DecQuantity, DecSales
FROM SalesSummary
UNION
SELECT Category, 'Jan', JanQuantity, JanSales
FROM SalesSummary
UNION
SELECT Category, 'Feb', FebQuantity, FebSales
FROM SalesSummary;
