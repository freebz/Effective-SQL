-- 코드 5-18 알코올 도수가 가장 높은 맥주의 원산지 국가를 추출하는 잘못된 SQL

SELECT Category, Country, MAX(MaxABV) AS MaxAlcohol
FROM BeerStyles
GROUP BY Category, Country;
