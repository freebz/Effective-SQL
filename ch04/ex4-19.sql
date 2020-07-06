-- 코드 4-19 서브쿼리를 사용해 고객 제품을 관심 제품으로 나누는 쿼리

SELECT DISTINCT CP1.CustomerID, CP1.CustFirstName,
  CP1.CustLastName
FROM CustomerProducts AS CP1
WHERE NOT EXISTS
(SELECT ProductName
 FROM ProdsOfInterest AS PofI
 WHERE NOT EXISTS
   (SELECT CustomerID
    FROM CustomerProducts AS CP2
    WHERE CP2.CustomerID = CP1.CustomerID
      AND CP2.ProductName = PofI.ProductName));
