-- 코드 4-40 모든 고객주문 정보 일부을올바르게 검색하는 쿼리

SELECT c.CustomerID, c.CustFirstname, c.CustLastName,
  o.OrderNumber, o.OrderDate, o.OrderTotal
FROM Customers AS c
  LEFT JOIN
    (SELECT o.OrderNumber, o.CustomerID,
       o.OrderDate, o.OrderTotal
     FROM Orders AS o
     WHERE o.OrderDate BETWEEN CAST('2015-10-01' AS DATE)
       AND CAST('2015-12-31' AS DATE)) AS OFil
    ON c.CustomerID = OFil.CustomerID;
