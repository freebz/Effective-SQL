-- 코드 9-8 코폰별 고객당 로우 한 개 생성

...
SELECT c.CustFirstName, c.CustLastName,
  c.CustStreetAddress, c.CustCity, c.CustState,
  c.CustZipCode, cp.NumCoupons
FROM Coupons AS cp
  INNER JOIN Customers AS c
    ON cp.CustomerID = c.CustomerID
  CROSS JOIN ztblPurchaseCoupons AS z
WHERE z.Sequence <= cp.NumCoupons;
