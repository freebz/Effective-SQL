-- 코드 10-8 특정 노드의 모든 자식 노드 찾기

SELECT e.*
FROM Employees AS e
WHERE e.HierarchyPath LIKE @NodePath + '%';
