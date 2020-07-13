-- 코드 8-13 상위 선호 장르를 두 개 비교해서 최고의 연주회를 선택하는 쿼리

WITH CustPreferences AS (
  SELECT c.CustomerID, c.CustFirstName, c.CustLastName,
    MAX((CASE WHEN mp.PreferenceSeq = 1
              THEN mp.StyleID
	      ELSE Null END)) AS FirstPreference,
    MAX((CASE WHEN mp.PreferenceSeq = 2
    	      THEN mp.StyleID
	      ELSE Null END)) AS SecondPreference,
    MAX((CASE WHEN mp.PreferenceSeq = 3
    	      THEN mp.StyleID
    	      ELSE Null END)) AS ThirdPreference
  FROM Musical_Preferences AS mp
    INNER JOIN Customers AS c
      ON mp.CustomerID = c.CustomerID
  GROUP BY c.CustomerID, c.CustFirstName, c.CustLastName
),
EntStrengths AS (
  SELECT e.EntertainerID, e.EntStageName,
    MAX((CASE WHEN es.StyleStrength = 1
    	      THEN es.StyleID
	      ELSE Null END)) AS FirstStrength,
    MAX((CASE WHEN es.StyleStrength = 2
    	      THEN es.StyleID
	      ELSE Null END)) AS SecondStrength,
    MAX((CASE WHEN es.StyleStrength = 3
    	      THEN es.StyleID
	      ELSE Null END)) AS ThirdStrength
  FROM Entertainer_Styles AS es
    INNER JOIN EnterTainers AS e
      ON es.EntertainerID = e.EntertainerID
  GROUP BY e.EntertainerID, e.EntStageName
)
SELECT CustomerID, CustFirstName, CustLastName,
  EntertainerID, EntStageName
FROM CustPreferences
  CROSS JOIN EntStrengths
WHERE (
  FirstPreference = FirstStrength
    AND SecondPreference = SecondStrength
  ) OR (
  SecondPreference = FirstStrength
    AND FirstPreference = SecondStrength
  )
ORDER BY CustomerID;
