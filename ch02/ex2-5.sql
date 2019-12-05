-- 코드 2-5 가상의 복합키로 오라클이 인덱스에 널 값을 허용하도록 처리

CREATE INDEX CustPhone_IDX
  ON Customers (CustPhoneNumber ASC, 1);
