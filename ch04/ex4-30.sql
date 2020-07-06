-- 코드 4-30 특정 연도 데이터를 조회하는 사거블 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE EmpDOB >= CAST('1950-01-01' AS Date)
  AND EmpDOB < CAST('1951-01-01' AS Date);
