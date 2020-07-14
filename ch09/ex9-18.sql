-- 코드 9-18 DimDate 테이블에서 MonthSeqNo로 정렬되는 인덱스 생성

CREATE INDEX DimDate_MonthSeqNo
ON DimDate (MonthSeqNo, DateValue, WeekdayNameLong);
