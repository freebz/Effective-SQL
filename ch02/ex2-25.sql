-- 코드 2-25 정렬 연산을 피하려고 필터링된 인덱스 생성

CREATE INDEX SelectProducts
  ON Products(ProductName, ProductNumber)
  WHERE CategoryID IN (1, 5, 9);
