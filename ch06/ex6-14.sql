-- 코드 6-14 숫자 1~100을 생성하는 쿼리

WITH SeqNumTbl AS (
  SELECT 1 AS SeqNum
  UNION ALL
  SELECT SeqNum + 1
  FROM SeqNumTbl
  WHERE SeqNum < 100
)
SELECT SeqNum
FROM SeqNumTbl;
