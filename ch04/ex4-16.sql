-- 코드 4-16 모든 보호 장비를 구매하지 않은 고객 찾기

SELECT c.CustomerID, c.CustFirstName, c.CustLastName
FROM Customers AS c
WHERE c.CustomerID IN
    (SELECT CustID FROM CustProd('Skateboard'))
  AND (c.CustomerID NOT IN
    (SELECT CustID FROM CustProd('Helmet'))
  OR c.CustomerID NOT IN
    (SELECT CustID FROM CustProd('Gloves'))
  OR c.CustomerID NOT IN
    (SELECT CustID FROM CustProd('Knee Pads')));
