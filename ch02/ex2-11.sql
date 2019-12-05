-- 코드 2-11 WHERE 절에서 LIKE를 사용한 SQL

SELECT EmployeeID, EmpFirstNqme, EmpLastName
FROM Employees
WHERE EmpState = 'WA'
  AND EmpCity LIKE '%ELLE%';
