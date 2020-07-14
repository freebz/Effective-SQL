-- 코드 9-17 DimDate 테이블에 인덱스를 만드는 두 번째 시도

CREATE INDEX DimDate_WeekDayLong
ON DimDate (DateValue, WeekdayNameLong, MonthSeqNo);
