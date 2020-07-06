-- 코드 4-17 모든 고객과 그들의 제품에 대한 뷰 생성

CREATE VIEW CustomerProducts AS
SELECT DISTINCT c.CustomerID, c.CustFirstName,
  c.CustLastName, p.ProductName
FROM Customers AS c
  INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
  INNER JOIN Order_Detials AS od
    ON o.OrderNumber = od.OrderNumber
  INNER JOIN Products AS p
ON p.ProductNumber = od.ProductNumber;
