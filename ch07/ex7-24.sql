-- 코드 7-24 코드 7-23의 쿼리를 개선하는 인덱스 생성

CREATE INDEX IX_Orders_EmployeeID_Included
ON Orders (EmployeeID)
INCLUDE (OrderNumber, CustomerID);
