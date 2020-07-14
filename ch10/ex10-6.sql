-- 코드 10-6 조상을 모두 찾는 쿼리

SELECT e.*
FROM Employees AS e
WHERE e.lft <= @lft
  AND e.rgt >= @rgt;
