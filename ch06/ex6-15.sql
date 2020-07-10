-- 코드 6-15 모든 직원과 관리자를 보여 주는 쿼리

WITH MgrEmps (
    ManagerID, ManagerName, EmployeeID, EmployeeName,
    EmployeeLevel
) AS (
  SELECT ManagerID, CAST(' ' AS varchar(50)), EmployeeID,
    CASE(CONCAT(EmpFirstName, ' ', EmpLastName)
      AS varchar(50)), 0 AS EmployeeLevel
  FROM Employees
  WHERE ManagerID IS NULL
  UNION ALL
  SELECT e.ManagerID, d.EmployeeName, e.EmployeeID,
    CAST(CONCAT(e.EmpFirstName, ' ', e.EmpLastName)
      AS varchar(50)), EmployeeLevel + 1
  FROM Employees AS e
    INNER JOIN MgrEmps AS d
      ON e.ManagerID = d.EmployeeID
)
SELECT ManagerID, ManagerName, EmployeeID, EmployeeName,
  EmployeeLevel
FROM MgrEmps
ORDER BY ManagerID;
