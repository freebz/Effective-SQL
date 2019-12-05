-- 코드 2-21 QuantityOnHand 컬럼에서 필터링도니 인덱스 생성

CREATE NONCLUSTERED INDEX LowProducts
  ON Products (ProductNumber)
  WHERE QuantityOnHand < 10;
