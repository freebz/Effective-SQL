-- 코드 2-6 널 값을 변환해 인덱스 생성

CREATE INDEX CustPhone_IDX
  ON Customers (NVL(CustPhoneNumber, 'unknown'));
