-- 코드 1-9 Customers 테이블 생성

CREATE TABLE Customers (
  CustomerID int NOT NULL PRIMARY KEY,
  CustFirstName varchar(25) NULL,
  CustLastName varchar(25) NULL,
  CustStreetAddress varchar(50) NULL,
  CustCity varchar(30) NULL,
  CustState varchar(2) NULL,
  CustZipCode varchar(10) NULL,
  CustAreaCode smallint NULL DEFAULT 0,
  CustPhoneNumber varchar(8) NULL
);
