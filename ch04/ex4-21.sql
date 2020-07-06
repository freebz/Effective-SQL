-- 코드 4-21 데이터 정의어(DDL)로 생성한 로그 테이블

CREATE TABLE ProgramLogs (
  LogID int PRIMARY KEY,
  LogUserID varchar(20) NOT NULL,
  LogDate datetime NOT NULL,
  Logger varchar(50) NOT NULL,
  LogLevel varchar(10) NOT NULL,
  LogMessage carchar(1000) NOT NULL
);
