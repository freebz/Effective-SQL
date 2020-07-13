-- 코드 8-12 모든 고객이 선호하는 장르와 일치하는 연주회 정보 보기

WITH CustStyles AS (
  SELECT c.CustomerID, c.CustFirstName,
    c.CustLastName, ms.StyleName
  FROM Customers AS c
    INNER JOIN Musical_Preferences AS mp
      ON c.CustomerID = mp.CustomerID
    INNER JOIN Musical_Styles AS ms
      ON mp.StyleID = ms.StyleID
),
EntStyles AS (
  SELECT e.EntertainerID, e.EntStageName, ms.StyleName
  FROM Entertainers AS e
    INNER JOIN Entertainer_Styles AS es
      ON e.EntertainerID = es.EntertainerID
    INNER JOIN Musical_Styles AS ms
      ON es.StyleID = ms.StyleID
)
SELECT CustStyles.CustomerID, CustStyles.CustFirstName,
  CustStyles.CustLastName, EntStyles.EntStageName
FROM CustStyles
  INNER JOIN EntStyles
    ON CustStyles.StyleName = EntStyles.StyleName
GROUP BY CustStyles.CustomerID, CustStyles.CustFirstName,
  CustStyles.CustLastName, EntStyles.EntStageName
HAVING COUNT(EntStyles.StyleName) = (
  SELECT COUNT(StyleName)
  FROM CustStyles AS cs1
  WHERE cs1.CustomerID = CustStyles.CustomerID
  )
ORDER BY CustStyles.CustomerID;
