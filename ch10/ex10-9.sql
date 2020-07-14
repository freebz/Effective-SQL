-- 코드 10-9 한 노드의 모든 조상을 찾는 쿼리

SELECT e.*
FROM Employees AS e
WHERE CHARINDEX(CONCAT('/',
  CAST(e.EmployeeID AS varchar(11)), '/'), @NodePath) > 0;
