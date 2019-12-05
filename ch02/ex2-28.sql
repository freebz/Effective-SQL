-- 코드 2027 대·소문자를 구분하는 RDBMS에서 인덱스 생성

CREATE INDEX EmpLastNameUpper
  ON Employees (UPPER(EmpLastName));
