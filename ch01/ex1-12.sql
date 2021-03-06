-- 코드 1-12 Products와 ProductAttribute 테이블 간 관계 생성

CREATE TABLE Products (
  ProductNumber int NOT NULL PRIMARY KEY,
  ProdDescription varchar(255) NOT NULL
);

CREATE TABLE ProductAttributes (
  ProductNumber int NOT NULL,
  AttributeName varchar(255) NOT NULL,
  AttributeValue varchar(255) NOT NULL,
  CONSTRAINT PK_ProductAttributes
    PRIMARY KEY (ProductNumber, AttributeName)
);

ALTER TABLE ProductAttributes
  ADD CONSTRAINT FK_ProductAttributes_ProductNumber
    FOREIGN KEY (ProductNumber)
      REFERENCES Products (ProductNumber);
