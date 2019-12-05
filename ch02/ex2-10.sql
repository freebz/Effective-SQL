-- 코드 2-10 SQL을 이용한 적절하지 않은 인덱스 생성

CREATE INDEX CustName
  ON Customers (CustFirstName, CustLastName);
