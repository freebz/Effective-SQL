-- 코드 1-7 DB2에서 표현식을 사용한 테이블 컬럼 정의

-- 테이블을 변경하려고 INTEGRITY 옵션을 끔
SET INTEGRITY FOR Order_Details OFF;
-- 표현식을 사용해 계산 컬러믈 생성함
ALTER TABLE Order_Details
  ADD COLUMN ExtendedPrice decimal(15,2)
    GENERATED ALWAYS AS (QuantityOrdered * QuotedPrice);
-- INTEGRITY 옵션을 다시 켬
SET INTEGRITY FOR Order_Details
IMMEDIATE CHECKED FORCE GENERATED;
-- 계산 컬럼에 인덱스를 생성함
CREATE INDEX Order_Details_ExtendedPrice
  ON Order_Details (ExtendedPrice);
