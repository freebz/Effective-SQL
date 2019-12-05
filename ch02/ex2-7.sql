-- 코드 2-7 PostgreSQL 에서 인덱스를 만들 때 널 제외 처리

CREATE INDEX CustPhone_IDX
  ON Customers (CustPhoneNumber)
  WHERE CustPhoneNumber IS NOT NULL;
