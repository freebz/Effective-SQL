-- 코드 10-7 구체화된 경로 메타데이터를 담은 컬럼을 가진 테이블 생성

CREATE TABLE Employees (
  EmployeeID int PRIMARY KEY,
  EmpName varchar(255) NOT NULL,
  EmpPosition varchar(255) NOT NULL,
  SupervisorID int NULL,
  HierarchyPath varchar(255)
);
