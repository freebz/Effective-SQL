-- 코드 4-9 CASE를 사용한 나이 계산

SELECT S.StudentID, S.LastName, S.FirstName,
  YEAR(SYSDATE) - YEAR(S.BirthDate) -
   CASE WHEN MONTH(S.BirthDate) < MONTH(SYSDATE)
     THEN 0
   WHEN MONTH(S.BirthDate) > MONTH(SYSDATE)
     THEN 1
   WHEN DAY(S.BirthDate) > DAY(SYSDATE)
     THEN 1
     ELSE 0 END AS Age
FROM Students AS S;
