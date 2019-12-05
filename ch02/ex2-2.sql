-- 코드 2-2 DB2에서 표준 인덱스에 있는 널 값 제외 처리

CREATE INDEX CustPhone_IDX
  ON Customers (CustPhoneNumber)
  EXCLUDE NULL KEYS;
