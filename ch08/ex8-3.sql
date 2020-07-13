-- 코드 8-3 모든 고객과 제품을 보여 주고, 각 고객이 구매한 제품에 표식을 남기는 쿼리

SELECT CustProd.CustomerID, CustProd.CustFirstName,
  CustProd.CustLastName, CustProd.ProductNumber,
  CustProd.ProductName,
  (CASE WHEN OrdDet.OrderCount > 0
    THEN 'You purchased this!'
    ELSE ' '
   END) AS ProductOrdered
FROM
(SELECT c.customerID, c.CustFirstName, c.CustLastName,
   p.ProductNumber, p.ProductName, p.ProductDescription
 FROM Customers AS c, Products AS p) AS CustProd
   LEFT JOIN
     (SELECT o.CustomerID, od.ProductNumber,
        COUNT(*) AS OrderCount
      FROM Orders AS o
        INNER JOIN Order_Details AS od
	  ON o.OrderNumber = od.OrderNumber
      GROUP BY o.CustomerID, od.ProductNumber) AS OrdDet
     ON CustProd.CustomerID = OrdDet.CustomerID
       AND CustProd.ProductNumber = OrdDet.ProductNumber
ORDER BY CustProd.CustomerID, CustProd.ProductName;
