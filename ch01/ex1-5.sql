-- 예제 1-5 예제 테이블 생성 SQL

CREATE TABLE Orders (
  OrderNumber int NOT NULL,
  OrderDate date NULL,
  ShipDate date NULL,
  CustomerID int NULL,
  EmployeeID int NULL,
  OrderTotal decimal(15,2) NULL
);
