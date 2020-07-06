-- 코드 4-29 특정 연도 데이터를 조회하는 넌사거블 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE YEAR(EmpDOB) = 1950;
