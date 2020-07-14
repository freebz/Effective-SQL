-- 코드 10-10 계통 테이블을 포함한 테이블 생성

CREATE TABLE Employees (
  EmployeeID int NOT NULL PRIMARY KEY,
  EmpName varchar(255) NOT NULL,
  EmpPosition varchar(255) NOT NULL,
  SupervisorID int NULL,
);

CREATE TABLE EmployeesAncestry (
  SupervisedEmployeeID int NOT NULL,
  SupervisingEmployeeID int NOT NULL,
  Distance int NOT NULL,
  PRIMARY KEY (SupervisedEmployeeID, SupervisingEmployeeID)
);

ALTER TABLE EmployeesAncestry
  ADD CONSTRAINT FK_EmployeesAncestry_SupervisingEmployeeID
    FOREIGN KEY (SupervisingEmployeeID)
      REFERENCES Employees (EmployeeID);

ALTER TABLE EmployeesAncestry
  ADD CONSTRAINT FK_EmployeesAncestry_SupervisedEmployeeID
    FOREIGN KEY (SupervisedEmployeeID)
      REFERENCES Employees (EmployeeID);
