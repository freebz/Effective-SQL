-- 코드 2-3 액세스에서 SQL로 인덱스를 만들 때 IGNORE NULL 설정

CREATE INDEX CustPhoneIndex
  ON Customers (CustPhoneNumber)
  WITH IGNORE NULL;
