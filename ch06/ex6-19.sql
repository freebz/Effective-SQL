-- 코드 6-19 벨기에산이거나 LEFT 조인을 사용해 국가 이름이 없는  맥주 선택

SELECT s.StyleNm
FROM Styles AS s
  LEFT JOIN Countries AS c
    ON s.CountryFK = c.CountryID
WHERE c.CountryNM = 'Belgium'
   OR c.CountryNM IS NULL;
