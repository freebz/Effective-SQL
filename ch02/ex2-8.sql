-- 코드 2-8 SQL을 사용한 테이블 생성

CREATE TABLE Customers (
  CustomerID int PRIMARY KEY NOT NULL,
  CustFirstName varchar(25) NULL,
  CustLastName varchar(25) NULL,
  CustStreetAddress varchar(50) NULL,
  CustCity varchar(30) NULL,
  CustState varchar(2) NULL,
  CustZipCode varchar(10) NULL,
  CustAreaCode smallint NULL,
  CustPhoneNumber varchar(8) NULL
);

CREATE INDEX CustState ON Customers (CustState);
