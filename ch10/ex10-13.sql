-- 코드 10-13 자식이 없는 모든 노드 찾기

SELECT e.*
FROM Employees AS e
WHERE NOT EXISTS (
  SELECT NULL
  FROM EmployeesAncestry AS a
  WHERE e.EmployeeID = a.SupervisingEmployeeID
    AND a.Distance > 0
  );
