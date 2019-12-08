-- 코드 3-5 반복 그룹을 언피벗하는 데 UNION 쿼리 사용

SELECT '2015-01-01' AS SalesMonth, Product, Jan AS SalesAmt
FROM tblPostSales
UNION ALL
SELECT '2015-02-01' AS SalesMonth, Product, Feb AS SalseAmt
FROM tblPostSales
UNION ALL
  ... 12개월을 모두 처리
