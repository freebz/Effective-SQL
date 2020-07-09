-- 코드 5-17 카테고리별 도수가 가장 높은 알코올을 추출하는 SQL

SELECT Category, MAX(MaxABV) AS MaxAlcohol
FROM BeerStyles
GROUP BY Category;
