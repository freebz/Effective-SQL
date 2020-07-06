-- 코드 4-20 GROUP BY와 HAVING 절을 사용해 두 집합 분할

SELECT CP.CustomerID, CP.CustFirstName, CP.CustLastName
FROM CustomerProducts AS CP
  CROSS JOIN ProdsOfInterest AS PofI
WHERE CP.ProductName = PofI.ProductName
GROUP BY CP.CustomerID, CP.CustFirstName, CP.CustLastName
HAVING COUNT(CP.ProductName) =
  (SELECT COUNT(ProductName) FROM ProdsOfInterest);
