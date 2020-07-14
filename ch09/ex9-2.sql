-- 코드 9-2 탤리 테이블을 사용하는 쿼리

SELECT ' ' AS CustName, ' ' AS CustStreetAddress,
    ' ' AS CustCityState, ' ' AS CustZipCode
FROM ztblSeqNumbers
WHERE Sequence <= 3
UNION ALL
SELECT CONCAT(c.CustFirstName, ' ', c.CustLastName)
AS CustName,
    c.CustStreetAddress,
    CONCAT(C.CustCity, ', ', c.CustState, ' ', c.CustZipCode)
       AS CustCityState, c.CustZipCode
FROM Customers AS c
ORDER BY CustZipCode;
