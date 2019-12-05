-- 코드 2-13 Orders 테이블 생성

CREATE TABLE Orders (
  OrderNumber int IDENTITY (1, 1) NOT NULL,
  OrderDate date NULL,
  ShipDate date NULL,
  CustomerID int NULL,
  EmployeeID int NULL,
  OrderTotal decimal NULL
);
