-- 코드 9-1 빈 라벨을 건너뛰는 목록을 생성하는 쿼리

WITH SeqNumTbl AS (
  SELECT 1 AS SeqNum
  UNION ALL
  SELECT SeqNum + 1
  FROM SeqNumTbl
  WHERE SeqNum < 100
  ),
SeqList AS (
  SELECT SeqNum
  FROM SeqNumTbl
  )
SELECT ' ' AS CustName, ' ' AS CustStreetAddress,
    ' ' AS CustCityState, ' ' AS CustZipCode
FROM SeqList
WHERE SeqNum <= 3
UNION ALL
SELECT CONCAT(c.CustFirstName, ' ', c.CustLastName)
       AS CustName,
    c.CustStreetAddress,
    CONCAT(c.CustCity, ', ', c.CustState, ' ', c.CustZipCode)
FROM Customers AS c
ORDER BY CustZipCode;
