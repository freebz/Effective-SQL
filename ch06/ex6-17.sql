-- 코드 6-17 조인을 사용해 벨기에산 맥주 스타일 선택

SELECT s.StyleNm
FROM Styles AS s
  INNER JOIN Countries AS c
    ON s.CountryFK = c.CountryID
WHERE CountryNM = 'Belgium';
