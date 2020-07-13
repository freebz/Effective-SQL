-- 코드 8-1 모든 고객 및 제품 목록을 얻는 데 카티전 곱을 사용한 쿼리

SELECT c.CustomerID, c.CustFirstName, c.CustLastName,
  p.ProductNumber, p.ProductName, p.ProductDescription
FROM Customers AS c, Products AS p;
