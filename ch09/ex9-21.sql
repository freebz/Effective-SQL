-- 코드 9-21 날짜 테이블 생성 DDL

CREATE TABLE DimDate (
  DateKey int PRIMARY KEY,
  FullDate date NOT NULL
  );
CREATE INDEX iFullDate
  ON DimDate (FullDate);
