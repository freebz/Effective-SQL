-- 코드 2-30 CalculateAge() 함수를 사용한 SQL

SELECT EmployeeID, EmpFIrstName, EmpLastName,
  CalculateAge(EmpDOB) AS EmpAge
FROM Employees
WHERE CalculateAge(EmpDOB) > 50;
