-- 코드 10-12 한 노드의 모든 조상 찾기

SELECT e.*
FROM Employees AS e
  INNER JOIN EmployeesAncestry AS a
    ON e.EmployeeID = a.SupervisingEmployeeID
WHERE a.SupervisedEmployeeID = @EmployeeID
  AND a.Distance > 0;
