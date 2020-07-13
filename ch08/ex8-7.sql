-- 코드 8-7 Teams 테이블 생성

CREATE TABLE Teams (
  TeamID int NOT NULL PRIMARY KEY,
  TeamName varchar(50) NOT NULL,
  CaptainID int NULL
);
