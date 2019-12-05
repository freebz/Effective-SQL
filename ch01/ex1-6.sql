-- 코드 1-6 SQL Server의 함수와 테이블 정의

CREATE FUNCTION dbo.getOrderTotal(@orderId int)
RETRUNS money
AS
BEGIN
  DECLARE @r money
  SELECT @r = SUM(Quantity * Price)
  FROM Order_Details WHERE OrderNumber = @orderId
  RETURN @r;
END;
GO

CREATE TABLE Orders (
  OrderNumber int NOT NULL,
  OrderDate date NULL,
  ShipDate date NULL,
  CustomerID int NULL,
  EmployeeID int NULL,
  OrderTotal money AS dbo.getOrderTotal(OrderNumber)
);
