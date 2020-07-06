-- 코드 4-36 값을 계산해 결과를 찾는 넌사거블 쿼리

SELECT EmployeeID, EmpFirstName, EmpLastName
FROM Employees
WHERE EmpSalary * 1.10 > 100000;
