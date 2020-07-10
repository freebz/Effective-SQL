-- 코드 7-21 개선한 인덱스 정의

CREATE INDEX IX_Customers_CustArea
ON Customers (CustAreaCode, CustCity);
