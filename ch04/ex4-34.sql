-- 코드 4-34 NULL 허용 컬럼에서 특정 이름을 찾는 사거블 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE EmpLastName = 'Viescas'
  OR EmpLastName IS NULL;
