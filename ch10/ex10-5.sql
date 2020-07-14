-- 코드 10-5 자식 노드를 모두 찾는 쿼리

SELECT e.*
FROM Employees AS e
WHERE e.lft >= @lft
  AND e.rgt <= @rgt;
