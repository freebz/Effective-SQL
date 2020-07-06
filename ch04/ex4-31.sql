-- 코드 4-31 특정 글자로 시작하는 데이터를 조회하는 넌사거블 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE LEFT(EmpLastName, 1) = 'S';
