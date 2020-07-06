-- 코드 4-28 DDL을 이용한 테이블과 인덱스 생성

CREATE TABLE Employees (
  EmployeeID int IDENTITY (1, 1) PRIMARY KEY,
  EmpFirstName varchar(25) NULL,
  EmpLastName varchar(25) NULL,
  EmpDOB date NULL,
  EmpSalary decimal(15,2) NULL
);

CREATE INDEX [EmpFirstName]
  ON [Employees]([EmpFirstName] ASC);

CREATE INDEX [EmpLastName]
  ON [Employees]([EmpLastname] ASC);

CREATE INDEX [EmpDOB]
  ON [Employees]([EmpDOB] ASC);

CREATE INDEX [EmpSalary]
  ON [Employees]([EmpSalary] ASC);
