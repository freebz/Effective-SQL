-- 코드 10-4 중첩 집합을 위한 lft와 rgt 컬럼을 가진 테이블 생성

CREATE TABLE Employees (
  EmployeeID int PRIMARY KEY,
  EmpName varchar(255) NOT NULL,
  EmpPosition varchar(255) NOT NULL,
  SupervisorID int NULL,
  lfg int NULL,
  rgt int NULL
);
