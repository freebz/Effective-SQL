-- 코드 4-35 널 허용 컬럼에서 특정 이름을 찾는 개선된 사거블 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE EmpLastName = 'Viescas'
UNION ALL
SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE EmpLastName IS NULL;
