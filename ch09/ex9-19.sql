-- 코드 9-19 Orders 테이블의 날짜 컬럼에 대한 인덱스 생성

CREATE INDEX Orders_OrderDate_ShipDate
ON Orders (OrderDate, ShipDate);
