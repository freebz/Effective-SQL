-- 코드 6-18 EXISTS 절을 사용해 벨기에산 맥주 스타일 선택

SELECT s.StyleNm
FROM Styles AS s
WHERE EXISTS (
  SELECT NULL
  FROM Countries
  WHERE CountryNM = 'Belgium';  
    AND Countries.CountryID = s.CountryFK
  );
