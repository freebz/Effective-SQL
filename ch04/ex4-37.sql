-- 코드 4-37 계산 값을 찾는 사거블 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE EmpSalary > 100000/1.10;
