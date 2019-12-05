-- 코드 1-4 SQL의 문자 연결 기능을 이용해 원래 데이터 생성

SELECT AuthorID as AuthId, CONCAT(AuthFirst,
  CASE
    WHEN AuthMid IS NULL
    THEN ' '
    ELSE CONCAT(' ', AuthMid, ' ')
  END, AuthLast) AS AuthName,
  CONCAT(AuthStNum, ' ', AuthStreet, ' ',
      AuthCity, ', ', AuthStProv,
      AuthPostal, ', ', AuthCountry)
    AS AuthAddress
FROM Authors;
