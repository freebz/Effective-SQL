-- 코두 3-6 테이블 여섯 개를 참조해 만든 요약 테이블(DB2)

CREATE SUMMARY TABLE SalesSummary AS (
SELECT
  t5.RegionName AS RegionName,
  t5.CountryCode AS CountryCode,
  t6.ProductTypeCode AS ProductTypeCode,
  t4.CurrentYear AS CurrentYear,
  t4.CurrentQuarter AS CurrentQuarter,
  t4.CurrentMonth AS CurrentMonth,
  COUNT(*) AS RowCount,
  SUM(t1.Sales) AS Sales,
  SUM(t1.Cost * t1.Quantity) AS Cost,
  SUM(t1.Quantity) AS Quantity,
  SUM(t1.GrossProfit) AS GrossProfit
FROM Sales AS t1, Retailer AS t2, Product AS t3,
  datTime AS t4, Region AS t5, ProductType AS t6
WHERE t1.RetailerId = t2.RetailerId
  AND t1.ProductId = t3.ProductId
  AND t1.OrderDay = t4.DayKey
  AND t2.RetailerCountryCode = t5.CountryCode
  AND t3.ProductTypeId = t6.ProductTypeId
GROUP BY t5.RegionName, t5.CountryCode, t6.ProductTypeCode,
  t4.CurrentYear, t4.CurrentQuarter, t4.CurrentMonth
)
DATA INITIALLY DEFERRED
REFRESH IMMEDIATE
ENABLE QUERY OPIMIZATION
MAINTAINED BY SYSTEM
NOT LOGGED INITIALLY;
