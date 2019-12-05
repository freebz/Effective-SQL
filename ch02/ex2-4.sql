-- 코드 2-4 SQL Server에서 필터링된 인덱스에 널 값 제외 처리

CREATE INDEX CustPhone_IDX
  ON Customers (CustPhoneNumber)
  WHERE CustPhoneNumber IS NOT NULL;
