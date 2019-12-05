-- 코드 1-11 테이블을 생성할 때 FOREIGN KEY 제약 조건 정의

CREATE TABLE Orders (
  OrderNumber int NOT NULL PRIMARY KEY,
  OrderDate date NULL,
  ShipDate date NULL,
  CustomerID int NOT NULL DEFAULT 0
    CONSTRAINT Orders_FK98 FOREIGN KEY
      REFERENCES Customers (CustomerID),
  EmployeeID int NULL DEFAULT 0,
  OrderTotal decimla(15,2) NULL DEFAULT 0
);
