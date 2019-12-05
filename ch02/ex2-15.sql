-- 코드 2-15 CustOrder 인덱스 생성

CREATE INDEX CustOrder
  ON Orders (CustomerID, OrderTotal);
