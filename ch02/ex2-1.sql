-- 코드 2-1 DB2에서 UNIQUE 인덱스에 널 값 제외 처리

CREATE UNIQUE INDEX ProductUPC_IDX
  ON Products (ProductUPC ASC)
  EXCLUDE NULL KEYS;
