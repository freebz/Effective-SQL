-- 코드 10-11 한 노드의 모든 자식 노드 찾기

SELECT e.*
FROM Employees AS e
  INNER JOIN EmployeesAncestry AS a
    ON e.EmployeeID = a.SupervisedEmployeeID
WHERE a.SupervisingEmployeeID = @EmployeeID
  AND a.Distance > 0;
