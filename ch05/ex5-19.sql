-- 코드 5-19 BeerStyles 테이블을 셀프 조인해 각 로우의 MaxABV 값을 비교한 쿼리

SELECT l.Category, l.MaxABV AS LeftMaxABV,
  r.MaxABV AS RightMaxABV
FROM BeerStyles AS l
  LEFT JOIN BeerStyles AS r
    ON l.Category = r.Category
      AND l.MaxABV < r.MaxABV;
