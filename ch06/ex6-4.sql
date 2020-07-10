-- 코드 6-4 CASE 문에서 단일 컬럼 서브쿼리를 사용한 쿼리

SELECT Employees.EmpFirstName, Employees.EmpLastName,
  Customers.CustFirstName, Customers.CustLastName,
  Customers.CustAreaCode, Customers.CustPhoneNumber,
  CASE WHEN Customers.CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE Orders.EmployeeID = Employees.EmployeeID
    ) THEN 'Ordered from you.'
    ELSE ' '
  END AS CustStatus
FROM Employees
  INNER JOIN Customers
    ON Employees.EmpState = Customers.CustState;
