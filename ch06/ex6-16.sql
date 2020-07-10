-- 코드 6-16 서브쿼리를 사용해 벨기에산 맥주 스타일 선택

SELECT StyleNm
FROM Styles
WHERE CountryFK IN (
  SELECT CountryID
  FROM Countries
  WHERE CountryNM = 'Belgium'
  );
