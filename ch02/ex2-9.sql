-- 코드 2-9 SQL을 이용한 적절한 인덱스 생성

CREATE INDEX CustName
  ON Customers (CustLastName, CustFirstName);
