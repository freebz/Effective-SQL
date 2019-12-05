-- 코드 1-8 오라클에서 인라인 표현식을 사용한 테이블 정의

CREATE TABLE Orders_Details (
  OrderNumber int NOT NULL,
  ProductNumber int NOT NULL,
  QuotedPrice decimal(15,2) DEFAULT 0 NULL,
  QuantityOrdered smallint DEFAULT 0 NULL,
  ExtendedPrice decimal(15,2)
    GENERATED ALWAYS AS (QuotedPrice * QuantityOrdered)
);
