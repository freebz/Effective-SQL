-- 코드 4-32 특정 문자로 시작되는 데이터를 조회하는 사거블 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE EmpLastName LIKE 'S%';
