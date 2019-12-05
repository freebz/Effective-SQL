-- 코드 1-10 Orders 테이블을 생성한 후 두 테이블의 연관 관계 정의

CREATE TABLE Orders (
  OrderNumber int NOT NULL PRIMARY KEY,
  OrderDate date NULL,
  ShipDate date NULL,
  CustomerID int NOT NULL DEFAULT 0,
  EmployeeID int NULL DEFAULT 0,
  OrderTotal decimal(15,2) NULL DEFAULT 0
);

ALTER TABLE Orders
  ADD CONSTRAINT Orders_FK99
    FOREIGN KEY (CustomerID)
      REFERENCES Customers (CustomerID);
