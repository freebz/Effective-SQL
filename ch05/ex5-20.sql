-- 코드 5-20 카테고리별 MaxABV 최댓값을 가진 로우의 세부 정보를 조회하는 쿼리

SELECT l.Category, l.Country, l.Style, l.MaxABV AS LeftMaxABV
FROM BeerStyles AS l
  LEFT JOIN BeerStyles AS r
    ON l.Category = r.Category
      AND l.MaxABV < r.MaxABV
WHERE r.MaxABV IS NULL
ORDER BY l.Category;
