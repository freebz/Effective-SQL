-- 코드 2-12 EmpStateName 인덱스 생성

CREATE INDEX EmpStateName
  ON Employees (EmpState, EmpCity);
