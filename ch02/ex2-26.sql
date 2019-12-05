-- 코드 2-26 대·소문자를 구분하지 않는 RDBMS용 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE EmpLastName = 'Viescas';
