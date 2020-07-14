-- 코드 10-1 자기 참조 외래키가 포함된 테이블 생성

CREATE TABLE Employees (
  EmployeeID int PRIMARY KEY,
  EmpName varchar(255) NOT NULL,
  EmpPosition varchar(255) NOT NULL,
  SupervisorID int NULL
);

ALTER TABLE Employees
  ADD FOREIGN KEY (SupervisorID)
    REFERENCES Employees (EmployeeID);
