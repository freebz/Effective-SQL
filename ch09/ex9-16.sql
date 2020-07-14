-- 코드 9-16 DimDate 테이블에 인덱스를 만드는 첫 번째 시도

CREATE INDEX DimDate_WeekDayLong
ON DimDate (DateValue, WeekdayNameLong);
