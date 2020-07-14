-- 코드 10-3 셀프 조인을 이용한 3단계 조회

SELECT e1.EmpName AS Employee, e2.EmpName as Supervisor,
  e3.EmpName AS SupervisorsSupervisor
FROM Employees AS e1
  LEFT JOIN Employees AS e2
    ON e1.SupervisorID = e2.EmployeeID
  LEFT JOIN Employees AS e3
    ON e2.SupervisorID = e3.EmployeeID;
