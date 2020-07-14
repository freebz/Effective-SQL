-- 코드 9-3 함수를 사용해 빈 라벨 처리

SELECT FUNCTION MailingLabels (@skip AS int = 0)
RETURNS Table
AS RETURN (
  SELECT ' ' AS CustName, ' ' AS CustStreetAddress,
    ' ' AS CustCityState, ' ' AS CustZipCode
  FROM ztblSeqNumbers
  WHERE Sequence <= @skip
  UNION ALL
  SELECT
    CONCAT(c.CustFirstName, ' ', c.CustLastName) AS CustName,
    c.CustStreetAddress,
    CONCAT(c.CustCity, ', ', c.CustState, ' ', c.CustZipCode)
      AS CustCityState, c.CustZipCode
  FROM Customers AS c
);

SELECT * FROM MailingLabels(5)
ORDER BY CustZipCode;
