-- 코드 4-33 NULL 허용 컬럼에서 특정 이름을 찾는 넌사거블 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE IsNull(EmpLastName, 'Viescas') = 'Viescas';
