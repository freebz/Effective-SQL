-- 코드 2-27 대·소문자를 구분하는 RDBMS용 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE UPPER(EmpLastName) = 'VIESCAS';
